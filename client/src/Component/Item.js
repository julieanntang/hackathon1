import React, { useState } from 'react'
import { Button } from 'semantic-ui-react'
import ItemEditForm from './ItemEditForm'

const Item = ({ id, category_id, name, description, price, contact, updateItem, deleteItem }) => {
  const [showForm, setShowForm] = useState(false)
  return (
    <div className='card'>
      <h2>{name}</h2>
      <p>{description}</p>
      <p>${price}</p>
      <p>Phone: {contact}</p>
      <Button onClick={()=> deleteItem(id)}>Delete</Button>
      <Button color="blue" onClick={() => setShowForm(!showForm)}>Edit</Button>
      {showForm && <ItemEditForm name={name} category_id={category_id} updateItem={updateItem} id={id} description={description} price={price} contact={contact} />}
    </div>
  )
}

export default Item