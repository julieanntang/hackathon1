import React from "react";
import { Link } from "react-router-dom";
import { Menu } from "semantic-ui-react";


const NavBar = () => {
  return (
      <Menu>
      <Menu.Item><Link to="/">Home</Link></Menu.Item>
      <Menu.Item><Link to="/categories">For Sale Categories</Link></Menu.Item>
      <Menu.Item><Link to="/jobs">Jobs</Link></Menu.Item>
      <Menu.Item><Link to="/articles">Articles</Link></Menu.Item>
      <Menu.Item><Link to="/about">About</Link></Menu.Item>
      </Menu>
  );
};

export default NavBar;