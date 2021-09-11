import React, { useState } from 'react'
import ItemEditForm from './ItemEditForm'

const Item = ({ id, category_id, name, description, price, contact, updateItem, deleteItem }) => {
  const [showForm, setShowForm] = useState(false)
  return (
    <div>
      <h2>{name}</h2>
      <p>{description}</p>
      <p>${price}</p>
      <p>Phone: {contact}</p>
      <button onClick={()=> deleteItem(id)}>Delete</button>
      <button onClick={() => setShowForm(!showForm)}>Edit</button>
      {showForm && <ItemEditForm name={name} category_id={category_id} updateItem={updateItem} id={id} description={description} price={price} contact={contact} />}
    </div>
  )
}

export default Item