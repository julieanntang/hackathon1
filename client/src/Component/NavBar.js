import React from "react";
import { Link } from "react-router-dom";


const NavBar = () => {
  return (
    <div>
      <Link to="/">Home</Link>
      <Link to="/categories">For Sale Categories</Link>
      <Link to="/jobs">Jobs</Link>
      <Link to="/articles">Articles</Link>
      <Link to="/about">About</Link>
    </div>
  );
};

export default NavBar;