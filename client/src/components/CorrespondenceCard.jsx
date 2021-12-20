import React from 'react'
import CheckBox from './CheckBox'

export default function CorrespondenceCard({correspondence, editing, intention, handleDeletionSelection}) {
    return (
        <div className="correspondence-card">
            <p className="correspondence">{correspondence.name} {(correspondence.notes[0])  && correspondence.notes.filter(note => {
               return note.intention_id === intention.id
            }).map(note =>`(${note.content})`)} -  {correspondence.category_title}</p>
            {editing && <CheckBox  callback={handleDeletionSelection} correspondence={correspondence}/>}
        </div>
    )
}
