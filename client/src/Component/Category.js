import React, { useState } from 'react'
import { useHistory } from 'react-router-dom'
import CategoryEditFrom from './CategoryEditForm'

const Category = ({ name, description, id, updateCategory, deleteCategory }) => {
  const [showForm, setShowForm] = useState(false)
  const history = useHistory()

  return (
    <div>
      <h1>{name}</h1>
      <p>{description}</p>
      <button onClick={() => deleteCategory(id)} >Delete</button>
      <button onClick={() => setShowForm(!showForm)}>Edit</button>
      <button onClick={() => history.push(`/categories/${id}/items`) }>See Items</button>
      {showForm && <CategoryEditFrom updateCategory={updateCategory} id={id} name={name} description={description}/>}
    </div>
  )
}

export default Category