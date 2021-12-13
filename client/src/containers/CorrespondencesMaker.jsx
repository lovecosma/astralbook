import React, { useEffect, useState } from 'react'
import M from "materialize-css"

export default function CorrespondencesMaker({categories, setCorrespondences, intentions}) {

    const [correspondenceNames, setCorrespodenceNames] = useState("")
    const [categoryId, setCategoryId] = useState(null)
    const [intentionId, setIntentionId] = useState(null)
    const [intention, setIntention] = useState({})
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
        associateCorrespondence(data)
        })
    }

    const associateCorrespondence = async ({correspondence}) => {

        let params = {
            intention: {
                correspondences_attributes: [correspondence]
            }
        }

        let resp = await fetch(`/api/intentions/${intentionId}`, {
            method: "PATCH", 
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/json"
            },
            body: JSON.stringify(params) 
        })
        let intentionData = await resp.json()
        setIntention(intentionData)
        setCorrespodenceNames("")
    }

    const handleSubmit = async (e) => {
        e.preventDefault()
        let name_array = correspondenceNames.split(', ')
        let correspondenceData = name_array.map(name => {
            return {
               correspondence: {
                    name: name.trim(),
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

    const fetchIntention = id => {
        fetch(`/api/intentions/${id}`)
        .then(resp => resp.json())
        .then(setIntention)
    }

    const handleIntentionSelect = (e) => {
        setIntentionId(e.target.value)
        fetchIntention(e.target.value)
    }   

    const deleteFromDB = (id) => {
        fetch(`/api/correspondences/${id}`, {
            method: "DELETE",
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/json"
            }
        })
        .then((resp) => {
            if(resp.ok){
                alert("Correspondence deleted from database")
                setCorrespondences((prev) => {
                    return prev.filter(cor => cor.id !== id)
                })
            }else {
                alert("Check API")
            }
        })
    }

    const removeFromIntention = (correspondence_id, intention_id) => {
        fetch(`/api/intentions/${intention_id}/correspondences/${correspondence_id}`,{
            method: "DELETE",
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/json"
            }
        })
        .then(resp => {
            if(resp.ok){
                alert("Correspondence removed from intention.")
                intention.correspondences = intention.correspondences.filter(cor => cor.id !== correspondence_id)
            }else {
                alert("Check API")
            }
        })
    }

    return (
        <div>
            <form onSubmit={handleSubmit} >
                <div class="input-field col s12">
                    <select onChange={handleIntentionSelect}>
                        <option value="" disabled selected>Choose your option</option>
                        {intentions.map(i => {
                            return <option value={i.id}>{i.name}</option>
                        })}
                    </select>
                    <label>Intention Select</label>
                </div>
                <div class="input-field col s12">
                    <select onChange={handleSelect}>
                        <option value="" disabled selected>Choose your option</option>
                        {categories.map(cat => {
                            return <option value={cat.id}>{cat.title}</option>
                        })}
                    </select>
                    <label>Category Select</label>
                </div>
                <input placeholder="names seprated by comma" type="text" name="correspondence-names" value={correspondenceNames} onChange={handleChange}/>
                <button type="submit">Create Correspondences</button>
            </form>
            {intention.id && 
            <div>
                <h3>{intention.name}</h3>
                <div className="intentions-conatiner" >
                    {intention.correspondences.map(c => {
                        return (
                            <div>
                                {c.name} - {categories.find(category => category.id === c.category_id).title}<br/>
                                <button onClick={() => deleteFromDB(c.id)}>Delete from DB</button>
                                <button onClick={() => removeFromIntention(c.id, intention.id)}>Delete from Intention Only</button>
                                <br/>
                                <br/>
                            </div>
                            
                        )
                    })}
                </div>
            </div>
            }
        </div>
    )
}
