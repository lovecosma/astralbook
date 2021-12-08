import React, {useState} from 'react'

export default function CorrespondenceMaker({correspondences, categories, setCorrespondences, setName, name}) {
    const [categoryId, setCategoryId] = useState(null)

    const handleChange = (e) => {
        setName(e.target.value)
    }
    const handleSelect = (e) => {
        setCategoryId(e.target.value)
        console.log(categoryId);
    }

    const handleSubmit = (e) => {
        e.preventDefault();
        let params = {
            correspondence: {
                name,
                category_id: categoryId
            }
        }
        fetch('/api/correspondences', {
            method: "POST",
            headers: {
               "Accept": "application/json",
               "Content-Type": "application/json" 
            },
            body: JSON.stringify(params)
        })
        .then(resp => {
            if(resp.ok){
                resp.json().then(corData => {setName(""); setCorrespondences([...correspondences, corData])})
            }else {
                resp.json().then(error => console.log(error.errors))
            }
        })
    }

    return (
        <div>
            <h1>Correspondence Maker</h1>
            <form onSubmit={handleSubmit}>
                <input type="text" name="name" value={name} onChange={handleChange}/>
                <br></br>
                <div class="input-field col s12">
                    <select onChange={handleSelect}>
                        <option value="" disabled selected>Choose your option</option>
                        {categories.map(cat => {
                            return <option value={cat.id}>{cat.title}</option>
                        })}
                    </select>
                    <label>Category Select</label>
                </div>
                <button type="submit">Create Correspondence</button>
            </form> 
        </div>
    )
}
