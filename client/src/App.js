import './App.css';
import { Switch, Route } from "react-router-dom";
import Articles from './Component/Articles';
import ArticleForm from './Component/ArticleForm';
import EditArticle from './Component/EditArticle';
import NavBar from './Component/NavBar';
import Home from './Component/Home';
import SingleArticle from './Component/SingleArticle';
import About from './Component/About';
import Categories from './Component/Categories';
import Items from './Component/Items';
import JobNew from "./Component/JobNew"
import JobEdit from "./Component/JobEdit"
import Jobs from "./Component/Jobs";

function App() {
  return (
    <div className="App">
      <NavBar />
      <Switch>
        <Route exact path="/" component={Home} />
        <Route exact path="/about" component={About} />
        <Route exact path="/articles" component={Articles} />
        <Route exact path="/articles/new" component={ArticleForm} />
        <Route exact path="/articles/:id" component={SingleArticle} />
        <Route exact path="/articles/:id/edit" component={EditArticle} />
        <Route exact  path='/categories' component={Categories}/>
        <Route exact path='/categories/:category_id/items' component={Items} />
        <Route exact path="/Jobs" component={Jobs} />
        <Route exact path="/Jobs/new" component={JobNew} />
        <Route exact path="/Jobs/:id/edit" component={JobEdit} />
      </Switch>
    </div>
  )
}

export default App;
