import './App.css';
import CorrespondencesContainer from './containers/CorrespondencesContainer';
import {BrowserRouter as Router, Routes, Route} from "react-router-dom"
import CategoryMaker from './containers/CategoryMaker';
import IntentionMaker from './containers/IntentionMaker';
import NavBar from './components/NavBar';
function App() {
  return (
      <div>
        <Router>
          <NavBar/>
          <Routes>
            <Route path="/categories/new" element={<CategoryMaker/>}></Route>
            <Route path="/correspondences/new" element={<CorrespondencesContainer/>}></Route>
            <Route path="/intentions/new" element={<IntentionMaker/>}></Route>
          </Routes>
        </Router>
      </div>
  );
}

export default App;
