export const fetchIntentions = async (dispatch) => {
    let resp = await fetch('/api/intentions')
    if(resp.ok){
        let intentions = await resp.json()
            dispatch({type: "ADDING_INTENTIONS", intentions})
    } else {
        let errors = resp.json()
            dispatch({type: "ERRORS", errors})
    }
}

export const createIntention = async (dispatch, intention) => {

    let params = {
        intention
    }
    let resp = await fetch('/api/intentions', {
        method: "POST",
        headers: {
            "Accept": "application/json",
            "Content-Type": "application/json"
        },
        body: JSON.stringify(params)
    })
    if(resp.ok){
        let intentionData = await resp.json()
        dispatch({type: "ADDING_INTENTION", intention: intentionData})
    }else {
        let errors = await resp.json()
        dispatch({type: "ERRORS", errors})
        alert(errors.errors)
    }
}

