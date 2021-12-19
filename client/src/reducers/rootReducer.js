import {combineReducers} from "redux"
import intentionsReducer from "./intentionsReducer"
import categoriesReducer from "./categoriesReducer"
const rootReducer = combineReducers({
    intentionsReducer,
    categoriesReducer
})

export default rootReducer