import React, {useEffect, useState} from 'react'
import M from "materialize-css"
export default function CorrespondencesContainer() {

    const [correspondences, setCorrespondences] = useState([])
    const [categories, setCategories] = useState([])
    const [name, setName] = useState("")
    const [categoryId, setCategoryId] = useState(null)

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
                resp.json().then(corData => setCorrespondences([...correspondences, corData]))
            }else{
                resp.json().then(errors => alert(errors))
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
