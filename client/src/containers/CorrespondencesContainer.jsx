import React, {useEffect, useState} from 'react'
import M from "materialize-css"
import CorrespondenceMaker from './CorrespondenceMaker'
import CorrespondencesMaker from './CorrespondencesMaker'
export default function CorrespondencesContainer() {

    const [correspondences, setCorrespondences] = useState([])
    const [categories, setCategories] = useState([])
    const [name, setName] = useState("")

   

    useEffect(() => {
        fetch('/api/correspondences')
        .then(resp => {
            if(resp.ok){
                resp.json().then(setCorrespondences)
            } else {
                alert("There was an error")
            }
        })
        fetch("/api/categories")
        .then(resp => resp.json())
        .then(data => {
            setCategories(data)
            let elems = document.querySelectorAll('select');
            M.FormSelect.init(elems, {});
        })
    }, [])

    



    return (
        <div>
           
                <CorrespondenceMaker correspondences={correspondences} categories={categories} setName={setName} setCorrespondences={setCorrespondences} name={name}/>
                <h2>- OR -</h2>
                <CorrespondencesMaker correspondences={correspondences} categories={categories} />
                <h2>Correspondences</h2>
                {correspondences.filter(cor => cor.name.includes(name)).map(cor => {
                    return (
                        <div>
                            <h3>{cor.name}</h3>
                        </div>
                    )
                })}
        </div>
    )
}
