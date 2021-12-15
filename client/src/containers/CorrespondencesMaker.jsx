import React, { useEffect, useState } from 'react'
import M from "materialize-css"
import CollectionSelect from '../components/CollectionSelect'

export default function CorrespondencesMaker({categories, setCorrespondences, intentions}) {

    const [correspondenceNames, setCorrespodenceNames] = useState("")
    const [categoryId, setCategoryId] = useState(null)
    const [intentionId, setIntentionId] = useState(null)
    const [subintentionId, setSubintentionId] = useState(null)
    const [intention, setIntention] = useState({})
    const [editing, setEditing] = useState(false)
    const [creatingSubCategory, setCreatingSubCategory] = useState(false)
    const [subintentionName, setsubintentionName] = useState("")
    const [subintentions, setSubintentions] = useState([])

    useEffect(() => {
       if(!creatingSubCategory){
            let elems = document.querySelectorAll('select');
            M.FormSelect.init(elems, {});
       }
    }, [creatingSubCategory, intention, subintentions])


    const handleChange = (e) => {
        setCorrespodenceNames(e.target.value)
    }

    const createCorrespondenceWithSubintention = (correspondence) => {
        let params = {
            correspondence
        }
        fetch(`/api/intentions/${intentionId}/subintentions/${subintentionId}/correspondences`, {
            method: "POST",
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/json"
            },
            body: JSON.stringify(params)
        })
        // .then(resp => {
        //     if(resp.ok){
        //         resp.json().then(correspondenceData => setCorrespondences(prev => [...prev, corres]))
        //     } else{

        //     }
        // })
    }

    const associateCorrespondences = async (correspondenceData) => {
        let params = {
            intention: {
                correspondences_attributes: correspondenceData
            }
        }

        let resp = await fetch(`/api/intentions/${intentionId}`, {
            method: "PATCH", 
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/json"
            },
            body: JSON.stringify(params) 
        })
        let intentionData = await resp.json()
        setIntention(intentionData)
        setCorrespodenceNames("")
    }

    const handleSubmit = async (e) => {
        e.preventDefault()
        let name_array = correspondenceNames.split(', ')
        let correspondenceData = name_array.map(name => {
           if(subintentionId === ""){
                return {
                    name: name.trim(),
                    category_id: categoryId
                }
           } else {
               return {
                    name: name.trim(),
                    category_id: categoryId,
                    subintention_id: subintentionId
               }
           }
        })
        debugger
        associateCorrespondences(correspondenceData)
    }

    const fetchIntention = id => {
        fetch(`/api/intentions/${id}`)
        .then(resp => resp.json())
        .then((intent) => {
            setIntention({...intent})
            setSubintentions([...intent.subintentions])
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
                setCorrespondences((prev) => {
                    return prev.filter(cor => cor.id !== id)
                })
            }else {
                alert("Check API")
            }
        })
    }

    const createSubCategory = (e) => {
        e.preventDefault();
        
        let params = {
            subintention: {
                name: subintentionName,
                intention_id: intentionId
            }
        }
        fetch(`/api/subintentions`, {
            method: "POST",
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/json"
            },
            body: JSON.stringify(params) 
        })
        .then(resp => {
            if (resp.ok) {
                resp.json().then(subintention => {
                    setSubintentions(prev => [...prev, subintention])
                    alert("Subintention successfully created.")
                    setsubintentionName("")
                })
            } else {
                resp.json().then(error => alert(error.errors))
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
                <p>
                <label>
                    <input onClick={() => setCreatingSubCategory(prev => !prev)} type="checkbox" />
                    <span>Show subcategory create</span>
                </label>
                </p>
            </form>
            <br/>
            {intention.id && 
            <div>
                {creatingSubCategory ? 
                    <form onSubmit={(createSubCategory)}>
                        <input type="text" name="intention_subcategory" onChange={(e) => setsubintentionName(e.target.value)} value={subintentionName}/>
                        <button type="submit">Create subCategory</button>
                    </form> :
                    <CollectionSelect handleSelect={(e) => setSubintentionId(e.target.value)} collection={subintentions} attr={"name"} title={"Subintention"}/>
                    }
                <h3>{intention.name}</h3>
                <div className="intentions-conatiner" >
                {intention.correspondences.sort(c => c.category_id).map(c => {
                            return (
                                <div>
                                    {c.name} - {categories.find(category => category.id === c.category_id).title} {editing && 
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
