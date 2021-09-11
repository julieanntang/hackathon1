import './App.css';
import { Route, Switch } from 'react-router-dom'
import Categories from './Component/Categories';
import Home from './Component/Home';
import Items from './Component/Items';

function App() {
  return (
    <div className="App">
      <Switch>
      <Route exact path='/' component={Home}/>
      <Route exact  path='/categories' component={Categories}/>
      <Route exact path='/categories/:category_id/items' component={Items} />
      </Switch>
    </div>
  );
}

export default App;
