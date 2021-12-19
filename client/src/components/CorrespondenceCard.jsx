import React from 'react'
import CheckBox from './CheckBox'

export default function CorrespondenceCard({correspondence, editing, intention, handleDeletionSelection}) {
    return (
        <div className="correspondence-card">
            <p className="correspondence">{correspondence.name}  - {correspondence.category_title}</p>
            {editing && <CheckBox id='creating-subintention' callback={handleDeletionSelection} correspondence={correspondence}/>}
        </div>
    )
}
