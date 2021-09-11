import axios from "axios";
import React, { useState, useEffect } from "react";
import { Button, Form, GridColumn, Input } from "semantic-ui-react";

const EditArticle = (props) => {

  const [name, setName] = useState("");
  const [author, setAuthor] = useState("");
  const [description, setDescription] = useState("");

  useEffect(() => {
    getArticle();
  }, []);

  const getArticle = async () => {
    try {
    let res = await axios.get(`/api/articles/${props.match.params.id}`)
    setName(res.data.name)
    setAuthor(res.data.author)
    setDescription(res.data.description)
    } catch (error) {
      alert(error)
      console.log("error")
    };
  };


  const handleSubmit = async (e) => {
    e.preventDefault();
    console.log("obj:", { name, author, description });
    try {
    let res = await axios.put(`/api/articles/${props.match.params.id}`, { name, author, description });
    props.history.push("/articles");
    } catch (error) {
      alert("error");
      console.log("error");
    };
  };

  return (
    <div>
      <h2>Update Article</h2>
      <Form onSubmit={handleSubmit}>
        <p>Title:</p>
        <Input defaultValue={name} onChange={(e) => setName(e.target.value)} />
        <p>Author:</p>
        <Input defaultValue={author} onChange={(e) => setAuthor(e.target.value)} />
        <p>Body:</p>
        <Input defaultValue={description} onChange={(e) => setDescription(e.target.value)} /><br />
        <Button color="blue" type="submit">Update</Button>
      </Form>
      <Button onClick={() => props.history.goBack()}>go back</Button>
    </div>
  );
};

export default EditArticle;