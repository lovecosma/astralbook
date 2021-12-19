import React from 'react'
import CheckBox from './CheckBox'

export default function CorrespondenceCard({correspondence, editing}) {
    return (
        <div className="correspondence-card">
            <p className="correspondence">{correspondence.name} {correspondence.notes[0] && correspondence.notes.map(note => `(${note.content})`)} - {correspondence.category_title}</p>
            {editing && <CheckBox id='creating-subintention'/>}
        </div>
    )
}
