import React from 'react'
import CorrespondencesMaker from './CorrespondencesMaker'
import {Routes, Route} from "react-router-dom"

export default function CorrespondencesContainer() { 


    return (
        <div>
            <Routes>
                <Route path="new" element={<CorrespondencesMaker />}></Route>
            </Routes>  
        </div>
    )
}
