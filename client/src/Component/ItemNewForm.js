import React, { useState } from 'react'

const ItemNewForm = ({ addItem }) => {
  const [name, setName] = useState('')
  const [description, setDescription] = useState('')
  const [price, setPrice] = useState('')
  const [contact, setContact] = useState('')

  const handleSubmit = () => {
    addItem({ name, description, price, contact })
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

export default ItemNewForm