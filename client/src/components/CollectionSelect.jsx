import React from 'react'

export default function CollectionSelect({handleSelect, collection, attr, title}) {
    return (
        <div class="input-field col s12">
            <select onChange={handleSelect}>
                <option value="" disabled selected>Choose your option</option>
                {collection.map(i => {
                    return <option value={i.id}>{i[attr]}</option>
                })}
            </select>
            <label>{title} Select</label>
        </div>
    )
}
