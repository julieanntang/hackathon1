import axios from "axios";
import React, { useState } from "react";

const ArticleForm = (props) => {

  const [name, setName] = useState("");
  const [author, setAuthor] = useState("");
  const [description, setDescription] = useState("");

  const handleSubmit = async (e) => {
    e.preventDefault();
    console.log("obj:", { name, author, description });
    try {
    let res = await axios.post("/api/articles", { name, author, description });
    props.history.push("/articles");
    } catch (error) {
      alert("error");
      console.log("error");
    };
  };

  return (
    <div>
      <h2>Add New Article</h2>
      <form onSubmit={handleSubmit}>
        <p>Title:</p>
        <input value={name} onChange={(e) => setName(e.target.value)} />
        <p>Author:</p>
        <input value={author} onChange={(e) => setAuthor(e.target.value)} />
        <p>Body:</p>
        <input value={description} onChange={(e) => setDescription(e.target.value)} /><br />
        <button type="submit">Add</button>
      </form>
      <button onClick={() => props.history.goBack()}>go back</button>
    </div>
  );
};

export default ArticleForm;