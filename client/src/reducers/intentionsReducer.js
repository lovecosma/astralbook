const intentionsReducer = (state = {intentions: [], errors: ""}, action) => {
    switch (action.type) {
        case "ADDING_INTENTIONS":
            return{
                ...state,
                intentions: [...action.intentions]
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