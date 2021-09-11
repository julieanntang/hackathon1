import React, { useState } from 'react'
import { Button, Form, Input } from 'semantic-ui-react'

const CategoryNewForm = ({ addCategory }) => {
  const [name, setName] = useState('')
  const [description, setDescription] = useState('')

  const handleSubmit = () => {
    addCategory({ name, description })
  }

  return (
    <div>
      <Form onSubmit={handleSubmit}>
        <p>Enter Name here</p>
        <Input value={name} onChange={(e) => setName(e.target.value) }/>
        <p>Enter Description here</p>
        <Input value={description} onChange={(e) => setDescription(e.target.value)}/><br/>
        <Button color="blue" type="submit">Add</Button>
      </Form>
    </div>
  )
}

export default CategoryNewForm