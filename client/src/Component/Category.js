import React, { useState } from 'react'
import { useHistory } from 'react-router-dom'
import CategoryEditFrom from './CategoryEditForm'
import { Button, Card, Icon } from 'semantic-ui-react'

const Category = ({ name, description, id, updateCategory, deleteCategory }) => {
  const [showForm, setShowForm] = useState(false)
  const history = useHistory()

  return (
    <div className='card'>
      <h1>{name}</h1>
      <p>{description}</p>
      <Button onClick={() => history.push(`/categories/${id}/items`) }>See Items</Button>
      <Button onClick={() => setShowForm(!showForm)}>Edit</Button>
      {showForm && <CategoryEditFrom updateCategory={updateCategory} id={id} name={name} description={description}/>}
      {showForm && <Icon color='red' name='trash' onClick={() => deleteCategory(id)}/>}
    </div>
  )
}

export default Category