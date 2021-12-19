import React, {useEffect, useState, useContext} from 'react'
import M from "materialize-css"
import CorrespondencesMaker from './CorrespondencesMaker'
import {Routes, Route} from "react-router-dom"
import "../stylesheets/Correspondences.css"

export default function CorrespondencesContainer() { 


    return (
        <div>
            <Routes>
                <Route path="new" element={<CorrespondencesMaker />}></Route>
            </Routes>  
        </div>
    )
}
