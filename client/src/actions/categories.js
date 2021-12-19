export const fetchCategories = async (dispatch) => {
    let resp = await fetch('/api/categories')
    if (resp.ok) {
        let categories = await resp.json()
        dispatch({type: "ADDING_CATEGORIES", categories})
    } else {
        let errors = await resp.json()
        dispatch({type: "ERRORS", errors}) 
    }
}