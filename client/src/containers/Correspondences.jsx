import React from 'react'
import CorrespondenceCard from '../components/CorrespondenceCard'
import "../stylesheets/Correspondences.css"

export default function Correspondences({correspondences, intention, editing, handleDeletionSelection}) {
    
    return (
        <div>
            <h1>{intention.name}</h1>
            <div id="correspondences-container">
                {correspondences.map(correspondence =>  <CorrespondenceCard correspondence={correspondence} editing={editing} intention={intention} handleDeletionSelection={handleDeletionSelection}/>)}
            </div>
        </div>
    )
}
