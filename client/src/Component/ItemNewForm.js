import React, { useState } from 'react'
import { Button, Form, Input } from 'semantic-ui-react'

const ItemNewForm = ({ addItem }) => {
  const [name, setName] = useState('')
  const [description, setDescription] = useState('')
  const [price, setPrice] = useState('')
  const [contact, setContact] = useState('')

  const handleSubmit = () => {
    addItem({ name, description, price, contact })
  }

  return (
    <div className='card'>
      <Form onSubmit={handleSubmit}>
        <p>Enter Name here</p>
        <Input value={name} onChange={(e) => setName(e.target.value) }/>
        <p>Enter Description here</p>
        <Input value={description} onChange={(e) => setDescription(e.target.value)}/>
        <p>Enter Price here</p>
        <Input value={price} onChange={(e) => setName(e.target.value) }/>
        <p>Enter Contact here</p>
        <Input value={contact} onChange={(e) => setName(e.target.value) }/> <br/>
        <Button color="blue" type="submit">Add</Button>
      </Form>
    </div>
  )
}

export default ItemNewForm