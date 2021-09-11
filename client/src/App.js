import './App.css';
import { Route, Switch } from 'react-router-dom'
import Categories from './Component/Categories';
import Home from './Component/Home';
import Items from './Component/Items';
import Articles from './Component/Articles';
import ArticleForm from './Component/ArticleForm';
import EditArticle from './Component/EditArticle';
import NavBar from './Component/NavBar';
import SingleArticle from './Component/SingleArticle';
import About from './Component/About';

function App() {
  return (
    <div className="App">
      <NavBar />
      <Switch>
        <Route exact path='/' component={Home}/>
        <Route exact  path='/categories' component={Categories}/>
        <Route exact path='/categories/:category_id/items' component={Items} />
        <Route exact path="/" component={Home} />
        <Route exact path="/about" component={About} />
        <Route exact path="/articles" component={Articles} />
        <Route exact path="/articles/new" component={ArticleForm} />
        <Route exact path="/articles/:id" component={SingleArticle} />
        <Route exact path="/articles/:id/edit" component={EditArticle} />
      </Switch>
    </div>
  );
};

export default App;
