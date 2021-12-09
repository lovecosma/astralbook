import React, {useState} from 'react'
import "../stylesheets/Category.css"
export default function CategoryMaker() {

    const [title, setTitle] = useState("")


    const handleSubmit = (e) => {
        e.preventDefault()
        let params = {
            category: {
                title
            }
        }
        fetch("/categories", {
            method: "POST",
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/json"
            },
            body: JSON.stringify(params)
        })
        .then(resp => resp.json())
    }

    return (
        <div className="categories-container">
           <form onSubmit={handleSubmit}>
                <input placeholder="title" onChange={e => setTitle(e.target.value)}type="text" name="title" value={title}/> 
                <button type="submit">Create Category</button> 
            </form> 
        </div>
    )
}
