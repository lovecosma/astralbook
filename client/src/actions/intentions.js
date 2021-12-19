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

