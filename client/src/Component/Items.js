import axios from 'axios'
import React, { useEffect, useState } from 'react'
import Item from './Item'
import ItemNewForm from './ItemNewForm'


const Items = (props) => {
  const category_id = props.match.params.category_id
  const [items, setItems] = useState([])
  const [category, setCategory] = useState([])

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

  const updateItem = async (item) => {
    try{
      let res = await axios.put(`/api/categories/${category_id}/items/${item.id}`, item)
      const newItems = items.map((i) => i.id === item.id ? item : i)
      setItems(newItems)
    }catch(err) {
      console.log(err)
    }
  }

  const renderItems = () => {
    return items.map((i) => (
      <div key={i.id}>
        <Item {...i} updateItem={updateItem} />
      </div>
    ))
  }


  return (
    <div>
      <h1>Items in {category.name} Category </h1>
      <ItemNewForm addItem={addItem} />
      {renderItems()}
    </div>
  )
}

export default Items