import axios from "axios";
import React, { useState } from "react";
import { Button, Form, Input } from "semantic-ui-react";

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
      <Form onSubmit={handleSubmit}>
        <p>Title:</p>
        <Input value={name} onChange={(e) => setName(e.target.value)} />
        <p>Author:</p>
        <Input value={author} onChange={(e) => setAuthor(e.target.value)} />
        <p>Body:</p>
        <Input value={description} onChange={(e) => setDescription(e.target.value)} /><br />
        <Button color="blue" type="submit">Add</Button>
      </Form>
      <Button onClick={() => props.history.goBack()}>go back</Button>
    </div>
  );
};

export default ArticleForm;