import axios from 'axios'
import React, { useState } from 'react'

const ItemEditForm = (props) => {
  const [name, setName] = useState(props.name)
  const [description, setDescription] = useState(props.description)
  const [price, setPrice] = useState(props.price)
  const [contact, setContact] = useState(props.contact)
  const [id, setId] = useState(props.id)

  const handleSubmit = async (e) => {
    e.preventDefault()
    try{
      let res = await axios.put(`/api/categories/${props.category_id}/items/${id}`, {name , description, price, contact, id})
      props.updateItem(res.data)
    }catch(err) {
      console.log(err)
    }

  }

  return (
    <div>
      <form onSubmit={handleSubmit}>
        <p>Enter Name here</p>
        <input value={name} onChange={(e) => (setName(e.target.value))}/>
        <p>Enter Description here</p>
        <input value={description} onChange={(e) => (setDescription(e.target.value))}/>
        <p>Enter Price here</p>
        <input value={price} onChange={(e) => (setPrice(e.target.value))}/>
        <p>Enter Contact here</p>
        <input value={contact} onChange={(e) => (setContact(e.target.value))}/> <br/>
        <button type="submit">Add</button>
      </form>
    </div>
  )
}

export default ItemEditForm