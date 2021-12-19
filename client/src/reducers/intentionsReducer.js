const intentionsReducer = (state = {intentions: [], subintentions: [], errors: ""}, action) => {
    switch (action.type) {
        case "ADDING_INTENTIONS":
            return{
                ...state,
                intentions: [...action.intentions]
            }
        case "ADDING_SUBINTENTIONS":
            return{
                ...state,
                subintentions: [...action.subintentions]
            }
        case "ERRORS":
            return{
                ...state,
                errors: action.errors
            }
        default:
            return state
    }
}

export default intentionsReducer