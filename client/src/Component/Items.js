import axios from 'axios'
import React, { useEffect, useState } from 'react'
import Item from './Item'
import ItemNewForm from './ItemNewForm'
import { Button } from 'semantic-ui-react'


const Items = (props) => {
  const category_id = props.match.params.category_id
  const [items, setItems] = useState([])
  const [category, setCategory] = useState([])
  const [showForm, setShowForm] = useState(false)

  useEffect(() => {
    getItems()
    getCategory()
  },[])

  const getItems = async () => {
    try {
      let res = await axios.get(`/api/categories/${category_id}/items`)
      setItems(res.data)
    }catch(err){
      console.log(err)
    }
  } 

  const getCategory = async() => {
    try{
      let res = await axios.get(`/api/categories/${category_id}`)     
      setCategory(res.data)
    }catch(err){
      console.log(err)
    }
  } 

  const addItem = async(item) => {
    try{
      let res = await axios.post(`/api/categories/${category_id}/items`, item)
      setItems([item, ...items])
    }catch(err){
      console.log(err)
    }
  }

  const updateItem = (item) => {
    console.log(item)
      const newItems = items.map((i) => i.id === item.id ? item : i)
      setItems(newItems)
  }

  const deleteItem = async (id) => {
    try {
      let res = await axios.delete(`/api/categories/${category_id}/items/${id}`)
      let filteredItems = items.filter((i) => i.id != id)
      setItems(filteredItems)
    } catch(err){
      console.log(err)
    }
  }

  const renderItems = () => {
    return items.map((i) => (
      <div key={i.id}>
        <Item {...i} deleteItem={deleteItem} updateItem={updateItem}/>
      </div>
    ))
  }

  return (
    <div>
      <h1>Items in {category.name} Category </h1>
      <div onClick={()=> props.history.push('/categories')} >Back</div>
      <Button onClick={()=> setShowForm(!showForm)}>Add New Item</Button>
      {showForm && <ItemNewForm addItem={addItem} />}
      <div className='container'>
      {renderItems()}
      </div>
    </div>
  )
}

export default Items