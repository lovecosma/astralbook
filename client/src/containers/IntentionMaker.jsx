import React, {useState, useEffect} from 'react'
import "../stylesheets/Intentions.css"

export default function IntentionMaker() {

    const [name, setName] = useState("")
    const [desc, setDesc] = useState("")
    const [intentions, setIntentions] = useState([])

    useEffect(() => {
     fetch("/api/intentions")
     .then(resp => resp.json())
     .then(setIntentions)
    }, [])

    const handleSubmit = (e) => {
        e.preventDefault()
        let params = {
            intention: {
                name,
                desc
            }
        }
        fetch("/api/intentions", {
            method: "POST",
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/json"
            },
            body: JSON.stringify(params)
        })
        .then(resp => resp.json())
        .then(intentionData => {setIntentions([...intentions, intentionData]); setName(""); setDesc("")})
    }

    return (
        <div className="intentions-container">
           <form onSubmit={handleSubmit}>
                <input placeholder="name" onChange={e => setName(e.target.value)}type="text" name="name" value={name}/> 
                <input placeholder="desc" onChange={e => setDesc(e.target.value)}type="text" name="desc" value={desc}/> 
                <button type="submit">Create Intention</button> 
            </form> 
            <h1>Intentions</h1>
            {intentions.map(i => {
                return (
                    <div>
                        {i.name}
                    </div>
                )
            })}
        </div>
    )
}
