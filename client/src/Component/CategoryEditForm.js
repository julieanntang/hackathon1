import React, { useState } from 'react'
import { Button, Card, Form, Input } from 'semantic-ui-react'

const CategoryEditFrom = (props) => {
  const [name, setName] = useState(props.name)
  const [description, setDescription] = useState(props.description)
  const [id, setId] = useState(props.id)

  const handleSubmit = () => {
    props.updateCategory({name, description, id})
  }

  return (
    <div>
      <Form onSubmit={handleSubmit}>
        <p>Edit Name here</p>
        <Input value={name} onChange={(e) => setName(e.target.value) }/>
        <p>Edit Description here</p>
        <Input value={description} onChange={(e) => setDescription(e.target.value)}/><br/>
        <Button type="submit">Add</Button>
      </Form>
    </div>
  )
}

export default CategoryEditFrom