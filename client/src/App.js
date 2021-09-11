import React from "react";
import './App.css';
import { Container } from "semantic-ui-react";
import Navbar from "./components/Navbar";
import { Switch, Route } from 'react-router';
import Jobs from "./components/Jobs";
import Home from "./components/Home";
import JobNew from "./components/JobNew"
import JobEdit from "./components/JobEdit"

function App() {
  return (
    <>
      <Navbar />
      <Container>
        <Switch>
          <Route exact path="/" component={Home} />
          <Route exact path="/Jobs" component={Jobs} />
          <Route exact path="/Jobs/new" component={JobNew} />
          <Route exact path="/Jobs/:id/edit" component={JobEdit} />
        </Switch>
      </Container>
    </>
  );
}


export default App;
