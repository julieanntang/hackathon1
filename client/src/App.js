import './App.css';
import { Switch, Route } from "react-router-dom";
import Articles from './components/Articles';
import ArticleForm from './components/ArticleForm';
import EditArticle from './components/EditArticle';
import NavBar from './components/NavBar';
import Home from './components/Home';
import SingleArticle from './components/SingleArticle';

function App() {
  return (
    <div className="App">
      <NavBar />
      <Switch>
        <Route exact path="/" component={Home} />
        <Route exact path="/articles" component={Articles} />
        <Route exact path="/articles/new" component={ArticleForm} />
        <Route exact path="/articles/:id" component={SingleArticle} />
        <Route exact path="/articles/:id/edit" component={EditArticle} />
      </Switch>
    </div>
  );
};

export default App;
