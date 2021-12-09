import React, {useEffect, useState} from 'react'
import M from "materialize-css"
import CorrespondenceMaker from './CorrespondenceMaker'
import CorrespondencesMaker from './CorrespondencesMaker'
export default function CorrespondencesContainer() {

    const [correspondences, setCorrespondences] = useState([])
    const [categories, setCategories] = useState([])
    const [name, setName] = useState("")
    const [editing, setEditing] = useState(false);
   

    useEffect(() => {
        // fetch('/api/correspondences')
        // .then(resp => resp.json())
        // .then(setCorrespondences)
        fetch("/api/categories")
        .then(resp => resp.json())
        .then(data => {
            setCategories(data)
            let elems = document.querySelectorAll('select');
            M.FormSelect.init(elems, {});
        })
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
        <div>
                <CorrespondencesMaker setCorrespondences={setCorrespondences} categories={categories} />
                <h2>Correspondences</h2>
                <p>
                <label>
                    <input onClick={() => {
                        setEditing(!editing)
                    }} type="checkbox" />
                    <span>Editing</span>
                </label>
                </p>
                {correspondences.map(cor => {
                    return (
                        <div>
                            <h3>{`Correspondence.create(name: "${cor.name}", category_id: ${cor.category_id})`} {editing && <button ocClick={() => handleDelete(cor.id)}>X</button>}</h3>
                        </div>
                    )
                })}
        </div>
    )
}
