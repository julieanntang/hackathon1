import React, { useEffect, useState } from 'react'
import axios from 'axios'
import Category from './Category'

import { useHistory } from 'react-router-dom'
import CategoryNewForm from './CategoryNewForm'

const Categories = () => {
  const [categories, setCategories] = useState([])
  const [showForm, setShowForm] = useState(false)
  const history = useHistory()

  useEffect(()=> {
    getCategories()
  },[])


  const getCategories = async() => {
    try{
      let res = await axios.get('/api/categories')     
      setCategories(res.data)
    }catch(err){
      console.log(err)
    }
  } 

  const addCategory = async(category) => {
    try{
    let res = await axios.post('/api/categories', category)
    setCategories(res.data, ...categories)
    }catch(err){
      console.log(err)
    }
  }

  const updateCategory = async(category) => {
    try {
      let res = await axios.put(`/api/categories/${category.id}`, category)
    }catch(err){
      console.log(err)
    }
  }

  const deleteCategory = async (id) => {
    try{
      let res = await axios.delete(`/api/categories/${id}`)
      let filterdCategories = categories.filter((c) => c.id !== id )
      setCategories(filterdCategories)
    }catch(err){
      console.log(err)
    }
  }

  const renderCategories = () => {
    return categories.map((c) => (
      <div key={c.id}>
        <Category deleteCategory={deleteCategory} history={history} updateCategory={updateCategory} {...c}/>
      </div>
    ))
  }

  return (
    <div>
      <h1>
        <p>Recreational Vehicles For Sale </p>
        <button onClick={() => setShowForm(!showForm)}>Add New</button>
        {showForm && <CategoryNewForm addCategory={addCategory} />}
        <p>Categories:</p>
        {renderCategories()}
      </h1>
    </div>
  )
}

export default Categories