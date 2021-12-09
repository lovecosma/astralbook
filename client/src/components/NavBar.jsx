import React from 'react'
import {NavLink} from "react-router-dom"
export default function NavBar() {
    return (
        <div>
             <nav className="black">
                <div class="nav-wrapper">
                <ul id="nav-mobile" class="left hide-on-med-and-down">
                    <li><NavLink to="/categories/new">Category</NavLink></li>
                    <li><NavLink to="/correspondences/new" >Correspondences</NavLink></li>
                    <li><NavLink to="/intentions/new" >Intentions</NavLink></li>
                </ul>
                </div>
            </nav> 
        </div>
    )
}
