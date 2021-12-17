import React, { useEffect, useState } from 'react'
import M from "materialize-css"
import CollectionSelect from '../components/CollectionSelect'

export default function CorrespondencesMaker({categories, setCorrespondences, intentions}) {
    
    const [correspondenceNames, setCorrespodenceNames] = useState("")
    
    const [categoryId, setCategoryId] = useState(null)
    const [intentionId, setIntentionId] = useState(null)
    
    const [intention, setIntention] = useState({})
    const [recentlyAdded, setRecentlyAdded] = useState([])
    const [editing, setEditing] = useState(false)
    
    useEffect(() => {
        let elems = document.querySelectorAll('select');
        M.FormSelect.init(elems, {});
    }, [intention])
    
    
    const handleChange = (e) => {
        setCorrespodenceNames(e.target.value)
    }
    
    
    const handleSubmit = async (e) => {
        e.preventDefault()
        setRecentlyAdded([])
        let name_array = correspondenceNames.split(', ')
        let itemsData = name_array.map(name => {
            let actual_name = name.split(" (")[0]
            let split_array = name.split(" (")
            let note;
            if(split_array.length > 1){
                note = split_array[1].split(")")[0].split("/").map(note => note.trim()).join(", ")
            }
            return {
                correspondence: {
                    name: actual_name, 
                    category_id: categoryId,
                    note
                }
            }
        })
        itemsData.forEach(correspondence => createIntentionCorrespondence(correspondence))
        setCorrespodenceNames("")
    }
    const createIntentionCorrespondence = (correspondence) => {
        
        fetch(`/api/intentions/${intentionId}/correspondences`, {
            method: "POST",
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/json"
            },
            body: JSON.stringify(correspondence)
        })
        .then(resp => {
            if(resp.ok){
                resp.json().then(correspondenceData => {
                   if(intention.correspondences.filter(cor => cor.id === correspondenceData.id).length === 0){
                       setRecentlyAdded(prev => [...prev, correspondenceData])
                        setIntention(prev => {
                            return {
                                ...prev,
                                correspondences: [...prev.correspondences, correspondenceData].sort((a, b) => a.category_id > b.category_id)
                            }
                        })
                   }
                })
            }else{
                resp.json().then(error => alert(error.errors))
            }
        })
    }

    const fetchIntention = id => {
        fetch(`/api/intentions/${id}`)
        .then(resp => resp.json())
        .then((intent) => {
            setIntention({...intent})
            setCorrespondences([...intent.correspondences])
        })
    }

    const handleIntentionSelect = (e) => {
        setIntentionId(e.target.value)
        fetchIntention(e.target.value)
    }   

    const deleteFromDB = (id) => {
        fetch(`/api/correspondences/${id}`, {
            method: "DELETE",
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/json"
            }
        })
        .then((resp) => {
            if(resp.ok){
                alert("Correspondence deleted from database")
                setIntention(prev => {
                    return {
                        ...prev,
                        correspondences: prev.correspondences.filter(cor => cor.id !== id)
                    }
                })
            }else {
                alert("Check API")
            }
        })
    }

    const removeFromIntention = (correspondence_id, intention_id) => {
        fetch(`/api/intentions/${intention_id}/correspondences/${correspondence_id}`,{
            method: "DELETE",
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/json"
            }
        })
        .then(resp => {
            if(resp.ok){
                alert("Correspondence removed from intention.")
                intention.correspondences = intention.correspondences.filter(cor => cor.id !== correspondence_id)
            }else {
                alert("Check API")
            }
        })
    }

   

    return (
        <div>
            <form onSubmit={handleSubmit} >
                <CollectionSelect handleSelect={handleIntentionSelect} collection={intentions} attr={"name"} title={"Intention"} />
                <CollectionSelect handleSelect={(e) => setCategoryId(e.target.value)} collection={categories} attr={"title"} title={"Category"}/>
                <br/>
                <input placeholder="names seprated by comma" type="text" name="correspondence-names" value={correspondenceNames} onChange={handleChange}/>
                <button type="submit">Create Correspondences</button>
                <p>
                    <label>
                        <input onClick={() => setEditing(prev => !prev)} type="checkbox" />
                        <span>Editing</span>
                    </label>
                </p>
            </form>
            <br/>
            {intention.id && 
            <div>
                <div>
                    {recentlyAdded.map(c => <div>{c.name} - {c.category.title} {c.notes.filter(note => note.intention_id === intention.id).map(note => `- ${note.content} `)}</div>)}
                </div>
                <h3>{intention.name}</h3>
                <div className="intentions-conatiner" >
                {intention.correspondences.map(c => {
                            return (
                                <div>
                                    {c.name} - {c.category.title} {c.notes.filter(note => note.intention_id === intention.id).map(note => `- ${note.content} `)}
                                    {editing && 
                                    <div>
                                        <button onClick={() => deleteFromDB(c.id)}>Delete from DB</button>
                                        <button onClick={() => removeFromIntention(c.id, intention.id)}>Delete from Intention Only</button>
                                    </div>
                                    }
                                </div>
                                
                            )
                        })}
                </div>
            </div>
            }
        </div>
    )
}
