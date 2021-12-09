import React, {useEffect, useState} from 'react'
import M from "materialize-css"
import CorrespondenceMaker from './CorrespondenceMaker'
import CorrespondencesMaker from './CorrespondencesMaker'
export default function CorrespondencesContainer() {

    const [correspondences, setCorrespondences] = useState([])
    const [categories, setCategories] = useState([])
    const [name, setName] = useState("")

   

    useEffect(() => {
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
                <CorrespondencesMaker setCorrespondences={setCorrespondences} categories={categories} />
                <h2>Correspondences</h2>
                {correspondences.map(cor => {
                    return (
                        <div>
                            <h3>{`Correspondence.create(name: "${cor.name}", category_id: ${cor.category_id})`}</h3>
                        </div>
                    )
                })}
        </div>
    )
}
