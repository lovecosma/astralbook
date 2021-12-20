import React from 'react'

export default function CheckBox({callback, text, id, correspondence}) {
    return (
        <div>
             <p>
                <label>
                    {!!correspondence ?  <input id={id} onClick={() => callback(correspondence.id)} type="checkbox" /> : <input id={id} onClick={callback} type="checkbox" />}
                    <span>{text}</span>
                </label>
            </p>
        </div>
    )
}
