import React, { useEffect, useState } from "react";
import logo from './logo.svg';
import FoodList from "./FoodList";
import './App.css';


function App() {
  const [foods, setfood] = useState([]);
  // const [search, setSearch] = useState("");

  useEffect(() => {
    fetch("http://127.0.0.1:9393/foods")
      .then((r) => r.json())
      .then((foods) => setfood(foods));
  }, []);


 const displayedFoods = foods

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
     <li>{foods}</li>
    </div>
  );
}

export default App;
