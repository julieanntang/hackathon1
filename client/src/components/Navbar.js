
import { Link } from "react-router-dom";
import { Menu } from "semantic-ui-react";

const Navbar = () => {
  return (
    <Menu>
      {/* <Link to="/">
        <Menu.Item>Home</Menu.Item>
      </Link> */}
      {/* <Link to="">
        <Menu.Item>For Sale</Menu.Item>
      </Link> */}
      {/* <Link to="/about">
        <Menu.Item>About</Menu.Item>
      </Link> */}
      <Link to="/jobs">
        <Menu.Item>Jobs</Menu.Item>
      </Link>
    </Menu>
  );
};

export default Navbar;