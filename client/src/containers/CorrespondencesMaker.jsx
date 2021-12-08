import React, { useState } from 'react'

export default function CorrespondencesMaker({categories, correspondences}) {

    const [correspondenceNames, setCorrespodenceNames] = useState("")
    const [categoryId, setCategoryId] = useState(null)


    const handleChange = (e) => {
        setCorrespodenceNames(e.target.value)
    }

    const handleSubmit = (e) => {
        e.preventDefault()
        let correspondenceData = correspondenceNames.map(name => {
            return {
                name,
                category_id: categoryId
            }
        })
        fetch('/api/correspondences', {
            method: "POST", 
            headers: {
                
            }
        })
        
    }

    const handleSelect = (e) => {
        setCategoryId(e.target.value)
        console.log(categoryId);
    }

    return (
        <div>
            <form onSubmit={handleSubmit} >
                <input type="text" name="correspondence-names" value={correspondenceNames} onChange={handleChange}/>
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
