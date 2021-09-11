import './App.css';
import { Switch, Route } from "react-router-dom";
import Articles from './components/Articles';
import ArticleForm from './components/ArticleForm';
import EditArticle from './components/EditArticle';
import NavBar from './components/NavBar';
import Home from './components/Home';
import SingleArticle from './components/SingleArticle';
import About from './components/About';
import Categories from './Component/Categories';
import Items from './Component/Items';

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
      </Switch>
    </div>
  );
};

export default App;
