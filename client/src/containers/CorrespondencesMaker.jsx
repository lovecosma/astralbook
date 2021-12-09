import React, { useEffect, useState } from 'react'
import M from "materialize-css"

export default function CorrespondencesMaker({categories, setCorrespondences}) {

    const [correspondenceNames, setCorrespodenceNames] = useState("")
    const [categoryId, setCategoryId] = useState(null)

    useEffect(() => {
        let elems = document.querySelectorAll('select');
        M.FormSelect.init(elems, {});
    }, [])

    const handleChange = (e) => {
        setCorrespodenceNames(e.target.value)
    }

    const createCorrespondence = (data) => {
        fetch('/api/correspondences', {
            method: "POST", 
            headers: {
               "Accept": "application/json",
               "Content-Type": 'application/json'
            },
            body: JSON.stringify(data)
        })
        .then(resp => {
            if(resp.ok){
                resp.json().then(data => {
                    setCorrespodenceNames("")
                    setCorrespondences((prev) => {
                       return [...prev, data]
                    })
                })
            }else {
                resp.json().then(error => console.log(error.errors));
            }
        })
    }

    const handleSubmit = (e) => {
        e.preventDefault()
        let name_array = correspondenceNames.split(', ')
        let correspondenceData = name_array.map(name => {
            return {
               correspondence: {
                    name,
                    category_id: categoryId
               }
            }
        })

        correspondenceData.forEach(c => {
            createCorrespondence(c)
        })
        
    }


    const handleSelect = (e) => {
        setCategoryId(e.target.value)
    }

    return (
        <div>
            <form onSubmit={handleSubmit} >
                <input placeholder="names seprated by comma" type="text" name="correspondence-names" value={correspondenceNames} onChange={handleChange}/>
                <div class="input-field col s12">
                    <select onChange={handleSelect}>
                        <option value="" disabled selected>Choose your option</option>
                        {categories.map(cat => {
                            return <option value={cat.id}>{cat.title}</option>
                        })}
                    </select>
                    <label>Category Select</label>
                </div>
                <button type="submit">Create Correspondences</button>
            </form>
        </div>
    )
}
