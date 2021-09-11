import axios from 'axios'
import React, { useState } from 'react'
import { Button, Form, Input } from 'semantic-ui-react'

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
      <Form onSubmit={handleSubmit}>
        <p>Enter Name here</p>
        <Input value={name} onChange={(e) => (setName(e.target.value))}/>
        <p>Enter Description here</p>
        <Input value={description} onChange={(e) => (setDescription(e.target.value))}/>
        <p>Enter Price here</p>
        <Input value={price} onChange={(e) => (setPrice(e.target.value))}/>
        <p>Enter Contact here</p>
        <Input value={contact} onChange={(e) => (setContact(e.target.value))}/> <br/>
        <Button type="submit">Add</Button>
      </Form>
    </div>
  )
}

export default ItemEditForm