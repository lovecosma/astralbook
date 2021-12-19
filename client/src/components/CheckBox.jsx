import React from 'react'

export default function CheckBox({callback, text}) {
    return (
        <div>
             <p>
                <label>
                    <input onClick={callback} type="checkbox" />
                    <span>{text}</span>
                </label>
            </p>
        </div>
    )
}
