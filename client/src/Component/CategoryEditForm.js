import React, { useState } from 'react'

const CategoryEditFrom = (props) => {
  const [name, setName] = useState(props.name)
  const [description, setDescription] = useState(props.description)
  const [id, setId] = useState(props.id)

  const handleSubmit = () => {
    props.updateCategory({ name, description, id })
  }

  return (
    <div>
      <form onSubmit={handleSubmit}>
        <p>Enter Name here</p>
        <input value={name} onChange={(e) => setName(e.target.value) }/>
        <p>Enter Description here</p>
        <input value={description} onChange={(e) => setDescription(e.target.value)}/>
        <button type="submit">Add</button>
      </form>
    </div>
  )
}

export default CategoryEditFrom