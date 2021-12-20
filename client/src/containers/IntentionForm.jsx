import React, {useState} from 'react'
import {createIntention} from '../actions/intentions'
import {useDispatch} from "react-redux"
export default function IntentionForm({setCreatingIntention}) {
    
    const [intention, setIntention] = useState({
        name: ""
    })

    const dispatch = useDispatch()

    const handleChange = (e) => {
        setIntention(() =>{
            return {
                name: e.target.value
            }
        })
    }
    const handleSubmit =  (e) => {
        e.preventDefault()
        createIntention(dispatch, intention)
        document.getElementById('creating-intention').click()
        setIntention({
            name: ""
        })
    }


    return (
        <div>
            <input onChange={handleChange} type="text" name="name" value={intention.name}id="intention-name-field"/>
            <button onClick={handleSubmit} >Create Intention</button>
        </div>
    )
}
