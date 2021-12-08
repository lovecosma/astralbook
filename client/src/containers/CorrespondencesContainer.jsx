import React, {useEffect, useState} from 'react'

export default function CorrespondencesContainer() {

    const [correspondences, setCorrespondences] = useState([])
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
    }, [])

    const handleChange = (e) => {
        setName(e.target.value)
    }

    return (
        <div>
            <h1>Correspondence Maker</h1>
            <form>
                <input type="text" name="name" value={name} onChange={handleChange}/>
                {correspondences.filter(cor => cor.name.includes(name)).map(cor => {
                    return (
                        <div>
                            <h2>{cor.name}</h2>
                        </div>
                    )
                })}
            </form>
        </div>
    )
}
