import React, { useEffect, useState } from 'react'
import {useDispatch, useSelector} from "react-redux"
import M from "materialize-css"
import CollectionSelect from '../components/CollectionSelect'
import {fetchIntentions} from '../actions/intentions'
import {fetchCategories} from "../actions/categories"
import CheckBox from '../components/CheckBox'

export default function CorrespondencesMaker() {
    
    const [correspondenceNames, setCorrespodenceNames] = useState("")
    const [subIntentionName, setSubIntentionName] = useState("")

    const [categoryId, setCategoryId] = useState(null)
    const [intentionId, setIntentionId] = useState(null)
    const [subIntentionId, setSubIntentionId] = useState(null)

    const [intention, setIntention] = useState({})
    const [intentionSet, setIntentionSet] = useState(false)
    const [subintentions, setSubintentions] = useState([])
    const [correspondences, setCorrespondences] = useState([])
    const [subintentionCorrespondences, setSubintentionCorrespondences] = useState([])

    const dispatch = useDispatch()
    const {intentions, categories} = useSelector(({intentionsReducer, categoriesReducer}) => {
        debugger
        return {
            ...intentionsReducer,
            ...categoriesReducer
        }
    })

    
    const [recentlyAdded, setRecentlyAdded] = useState([])
    const [editing, setEditing] = useState(false)
    const [creatingSubintention, setCreatingSubintention] = useState(false)

    useEffect(() => {
        fetchIntentions(dispatch)
        fetchCategories(dispatch)
    }, [])

    useEffect(() => {
        let elems = document.querySelectorAll('select');
        M.FormSelect.init(elems, {});
    }, [intentions, categories, intentionSet, creatingSubintention])
    
    
    const handleChange = (e) => {
        setCorrespodenceNames(e.target.value)
        setRecentlyAdded([])
    }
    
    
    const handleSubmit = async (e) => {
        e.preventDefault()
        setRecentlyAdded([])
        let name_array = correspondenceNames.split(', ')
        let itemsData = name_array.map(name => {
            let actual_name = name.split(" (")[0]
            let split_array = name.split(" (")
            let note;
            let subintention = !!Number(subIntentionId) ? subIntentionId : null
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
        itemsData.forEach(correspondence => {
            if(!!Number(subIntentionId)){
                createSubintentionCorrespondence(correspondence)
            } else {
                createIntentionCorrespondence(correspondence)
            }
        })
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

    const createSubintentionCorrespondence = (correspondence) => {
        let params = {
            subintention_id: subIntentionId,
            ...correspondence
        }
        fetch(`/api/subintention_correspondences`, {
            method: "POST",
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/json"
            },
            body: JSON.stringify(params)
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

    const fetchIntentionCorrespondences = id => {
        fetch(`/api/intentions/${id}/correspondences`)
        .then(resp => resp.json())
        .then((intent) => {
            setIntention({...intent})
        })
    }

    const handleIntentionSelect = (e) => {
        setIntention(intentions.find(intent => intent.id === Number(e.target.value)))
        setIntentionSet(true)
        setSubIntentionId(null)
        fetchIntentionCorrespondences(e.target.value)
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

    const createSubintention = (e) => {
        e.preventDefault()
        let params = {
            subintention: {
                name: subIntentionName
            }
        }
        fetch(`/api/intentions/${intentionId}/subintentions`, {
            method: "POST",
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/json"
            },
            body: JSON.stringify(params)
        })
        .then(resp => {
            if(resp.ok){
                resp.json().then(subIntentionData => {
                    alert("Subintention created!")
                    document.getElementById("creating-subintention").click()
                })
            } else {
                resp.json(error => alert(error.errors))
            }
        })
    }

   

    return (
        <div>
            <h1>Correspondences Maker</h1>
           <form onSubmit={handleSubmit} >
                <CollectionSelect handleSelect={handleIntentionSelect} collection={intentions} attr={"name"} title={"Intention"} />
                {intentionSet && 
                creatingSubintention ? 
                <div>
                    <input type="text" onChange={(e) => setSubIntentionName(e.target.value)}/>
                    <button onClick={createSubintention}>Create New Subintention</button>
                </div>
                :
                <CollectionSelect handleSelect={(e) => setSubIntentionId(e.target.value)} collection={subintentions} attr={"name"} title={"Subintention"}/>
                }
                <CollectionSelect handleSelect={(e) => setCategoryId(e.target.value)} collection={categories} attr={"title"} title={"Category"}/>
                <input placeholder="names seprated by comma" type="text" name="correspondence-names" value={correspondenceNames} onChange={handleChange}/>
                <button type="submit">Create Correspondences</button>
            </form>
                <CheckBox callback={() => setEditing(prev => !prev)} text={"Editing"}/>
                <CheckBox callback={() => setCreatingSubintention(prev => !prev)} text={"Creating Subintention"} />
        </div>
    )
}
