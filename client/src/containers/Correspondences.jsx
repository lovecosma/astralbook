import React from 'react'
import CheckBox from '../components/CheckBox'
import "../stylesheets/Correspondences.css"

export default function Correspondences({correspondences, intention, editing}) {
    
    return (
        <div>
            <h1>{intention.name}</h1>
            <div id="correspondences-container">
                {correspondences.map(correspondence => {
                    return(
                        <div className="correspondence-card">
                            <p>{correspondence.name} {correspondence.notes[0] && correspondence.notes.map(note => `(${note.content})`)} - {correspondence.category_title}</p>
                            {editing && <CheckBox/>}
                        </div>
                    )
                } )}
            </div>
        </div>
    )
}
