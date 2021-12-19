import React from 'react'

export default function CheckBox({callback, text, id}) {
    return (
        <div>
             <p>
                <label>
                    <input id={id} onClick={callback} type="checkbox" />
                    <span>{text}</span>
                </label>
            </p>
        </div>
    )
}
