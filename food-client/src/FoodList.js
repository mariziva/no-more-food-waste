import React from "react";
// import food from "./food";

function foodList({
    
  foods,
}) {
  return (
    console.log(foods),
    <div className="list">
      <ul>
        {foods.map((food) => (
          
          <li key={food.id}>{food.name}</li>
        ))}
      </ul>
    </div>
  );
}

export default foodList;
