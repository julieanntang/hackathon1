import React, { useState } from 'react'

const ItemEditForm = (props) => {
  const [name, setName] = useState(props.name)
  const [description, setDescription] = useState(props.description)
  const [price, setPrice] = useState(props.price)
  const [contact, setContact] = useState(props.contact)

  const handleSubmit = () => {
    props.updateItem({ name, description, price, contact })
  }

  return (
    <div>
      <form onSubmit={handleSubmit}>
        <p>Enter Name here</p>
        <input value={name} onChange={(e) => setName(e.target.value) }/>
        <p>Enter Description here</p>
        <input value={description} onChange={(e) => setDescription(e.target.value)}/>
        <p>Enter Price here</p>
        <input value={price} onChange={(e) => setName(e.target.value) }/>
        <p>Enter Contact here</p>
        <input value={contact} onChange={(e) => setName(e.target.value) }/> <br/>
        <button type="submit">Add</button>
      </form>
    </div>
  )
}

export default ItemEditForm