import React, { useEffect, useState } from 'react'
import {useDispatch, useSelector} from "react-redux"
import M from "materialize-css"
import CollectionSelect from '../components/CollectionSelect'
import {fetchIntentions} from '../actions/intentions'
import {fetchCategories} from "../actions/categories"
import CheckBox from '../components/CheckBox'
import Correspondences from './Correspondences'
import CorrespondenceCard from '../components/CorrespondenceCard'
import IntentionForm from './IntentionForm'

export default function CorrespondencesMaker() {
    
    const [correspondenceNames, setCorrespodenceNames] = useState("")

    const [categoryId, setCategoryId] = useState(null)

    const [intention, setIntention] = useState({})
    const [intentionSet, setIntentionSet] = useState(false)
    const [correspondences, setCorrespondences] = useState([])
    
    const [forDeletion, setForDeletion] = useState([])

    const dispatch = useDispatch()
    const {intentions, categories} = useSelector(({intentionsReducer, categoriesReducer}) => {
        return {
            ...intentionsReducer,
            ...categoriesReducer
        }
    })

    
    const [recentlyAdded, setRecentlyAdded] = useState([])
    const [editing, setEditing] = useState(false)
    const [creatingIntention, setCreatingIntention] = useState(false)


    useEffect(() => {
        fetchIntentions(dispatch)
        fetchCategories(dispatch)
    }, [dispatch])

    useEffect(() => {
        let elems = document.querySelectorAll('select');
        M.FormSelect.init(elems, {});
    }, [intentions, categories, intentionSet, creatingIntention])
    
    
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
        
        fetch(`/api/intentions/${intention.id}/correspondences`, {
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
                    setCorrespondences(prev => [...prev, correspondenceData])
                    setRecentlyAdded(prev => [...prev, correspondenceData])
                })
            }else{
                resp.json().then(error => alert(error.errors))
            }
        })
    }

    const fetchIntentionCorrespondences = id => {
        fetch(`/api/intentions/${id}/correspondences`)
        .then(resp => resp.json())
        .then(setCorrespondences)
    }

    const handleIntentionSelect = (e) => {
       let intent = intentions.find(intent => intent.id === Number(e.target.value))
        setIntention(intent)
        setIntentionSet(true)
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
                setCorrespondences(prev =>  prev.filter(cor => cor.id !== Number(id)))
                setRecentlyAdded(prev =>  prev.filter(cor => cor.id !== Number(id)))
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

    const handleDeletionSelection = (id) => {
       if (forDeletion.includes(id)) {
           setForDeletion(prev => prev.filter(index => index !== id))
       } else {
           setForDeletion(prev => [...prev, id])
       }
    }

    const handleDeletes = () => {
        document.getElementById('editing').click()
        forDeletion.forEach(id => {
            deleteFromDB(id)
        })
        setForDeletion([])
    }

   

    return (
        <div>
            <h1>Correspondences Maker</h1>
           <form onSubmit={handleSubmit} >
                {creatingIntention ? <IntentionForm setCreatingIntention={setCreatingIntention}/> : <CollectionSelect handleSelect={handleIntentionSelect} collection={intentions} attr={"name"} title={"Intention"} />}
                <CollectionSelect handleSelect={(e) => setCategoryId(e.target.value)} collection={categories} attr={"title"} title={"Category"}/>
                <input placeholder="names seprated by comma" type="text" name="correspondence-names" value={correspondenceNames} onChange={handleChange}/>
                <button type="submit">Create Correspondences</button>
            </form>
                <CheckBox id={'editing'} callback={() => setEditing(prev => !prev)} text={"Editing"}/>
                <CheckBox id={'creating-intention'} callback={() => setCreatingIntention(prev => !prev)} text={"Creating Intention"}/>
                {editing && <button onClick={handleDeletes}>Delete from DB</button>}<br/>
                {editing && <button>Remove from Intention</button>}<br/>
            <h3>Recently Added</h3>
            <div id="recently-added-container">
                {recentlyAdded.map(correspondence => <CorrespondenceCard key={correspondence.id} correspondence={correspondence} intention={intention} editing={editing} handleDeletionSelection={handleDeletionSelection}/>)}
            </div>
                {intentionSet && <Correspondences correspondences={correspondences} intention={intention} editing={editing} handleDeletionSelection={handleDeletionSelection}/>}
        </div>
    )
}
