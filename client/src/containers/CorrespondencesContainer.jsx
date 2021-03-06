import React, {useEffect, useState} from 'react'
import M from "materialize-css"
import CorrespondenceMaker from './CorrespondenceMaker'
import CorrespondencesMaker from './CorrespondencesMaker'
import "../stylesheets/Correspondences.css"
export default function CorrespondencesContainer() {

    const [correspondences, setCorrespondences] = useState([])
    const [categories, setCategories] = useState([])
    const [name, setName] = useState("")
    const [editing, setEditing] = useState(false);
    const [intentions, setIntentions] = useState([])


    useEffect(() => {
        // fetch('/api/correspondences')
        // .then(resp => resp.json())
        // .then(setCorrespondences)
        const fetchInfo = async () => {
            let resp = await fetch("/api/intentions")
            let intentionsData = await resp.json()
            setIntentions(intentionsData)
    
            let resp2 = await fetch("/api/categories")
            let catData = await resp2.json()
            setCategories(catData)
            let elems = document.querySelectorAll('select');
            M.FormSelect.init(elems, {});
        }
        fetchInfo()
    }, [])

    const handleDelete = (id) => {
        fetch(`/api/correspondences/${id}`, {
            method: "DELETE",
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/json"
            }
        })
        .then(resp => resp.json())
        .then(data => {
            setCorrespondences((prev) => {
                return prev.filter(cor => cor.id !== id)
            })
        })
    }



    return (
        <div className="correspondences-container">
            <CorrespondencesMaker setCorrespondences={setCorrespondences} categories={categories} intentions={intentions}/>
            {/* <h2>Correspondences</h2>
            <p>
            <label>
                <input onClick={() => {
                    setEditing(!editing)
                }} type="checkbox" />
                <span>Editing</span>
            </label>
            </p> */}
        </div>
    )
}
