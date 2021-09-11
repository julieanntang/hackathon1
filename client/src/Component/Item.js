import React from 'react'
import ItemEditForm from './ItemEditForm'

const Item = ({ name, description, price, contact, updateItem }) => {
  return (
    <div>
      <h2>{name}</h2>
      <p>{description}</p>
      <p>${price}</p>
      <p>Phone: {contact}</p>
      <ItemEditForm name={name} updateItem={updateItem} description={description} price={price} contact={contact} />
    </div>
  )
}

export default Item