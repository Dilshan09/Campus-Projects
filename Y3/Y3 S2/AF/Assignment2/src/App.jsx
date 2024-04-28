import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import Home from './components/Home';
import NasaPhoto from './components/NasaPhoto';
import MarsRover from './components/MarsRover';
import './App.css'
import 'tailwindcss/tailwind.css'; // Import Tailwind CSS

function App() {
  return (
    <div className="app">
    <Router>
      <Routes>
        
          <Route element={<Home />} path="/" />
          <Route element={<NasaPhoto />} path="/nasaphoto" />
          <Route element={<MarsRover />} path="/marsrover" />
        
      </Routes>
    </Router>
    </div>
  )
}

export default App;
