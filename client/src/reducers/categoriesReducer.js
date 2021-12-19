const categoriesReducer = (state = {categories: [], errors: ""}, action) =>{
    switch (action.type) {
        case "ADDING_CATEGORIES":
            return{
                ...state,
                categories: [...action.categories]
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

export default categoriesReducer