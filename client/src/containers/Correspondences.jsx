import React from 'react'
import "../stylesheets/Correspondences.css"

export default function Correspondences({correspondences, intention}) {
    return (
        <div>
            <h1>{intention.name}</h1>
            <div id="correspondences-container">
                {correspondences.map(correspondence => <div>{`${correspondence.name} - ${correspondence.category_title}`}</div> )}
            </div>
        </div>
    )
}
