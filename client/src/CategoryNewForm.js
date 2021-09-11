import React, { useState } from 'react'

const CategoryNewForm = ({ addCategory }) => {
  const [name, setName] = useState('')
  const [description, setDescription] = useState('')

  const handleSubmit = () => {
    addCategory({ name, description })
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

export default CategoryNewForm