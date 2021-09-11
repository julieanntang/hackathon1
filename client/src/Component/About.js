import React from "react";
import alan from "./alan.png";
import julie from "./julie.png";
import lee from "./lee.png";

const About = () => {
  console.log(alan)
  return (
    <div>
      <h1>HELLO!</h1>
      <p>We are just a bunch of bored hooligans who decided to put this site together.</p>
      <img src={alan} alt="fireSpot" height="300px" width="150px" />
      <img src={julie} alt="fireSpot" height="300px" width="150px" />
      <img src={lee} alt="fireSpot" height="300px" width="150px" />
    </div>
  );
};

export default About;