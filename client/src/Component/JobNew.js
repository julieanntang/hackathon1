import axios from "axios";
import React, { useState } from "react";
import { useHistory } from "react-router";
import { Button, Form } from "semantic-ui-react";


const JobNew = (props) => {
  
  const history = useHistory();
  const [name, setName] = useState("");
  const [description, setDescription] = useState("");
  const [salary, setSalary] = useState("");

  const handleSubmit = async () => {
    await axios.post("/api/jobs", { name, description, salary });
    props.history.push("/jobs");
  };
  return (
    <div>
      <h1>Create Job Listing</h1>
      <Form onSubmit={handleSubmit}>
        <Form.Field>
          <label>name</label>
          <Form.Input
            value={name}
            onChange={(e, { value }) => setName(value)}
          />
        </Form.Field>
        <Form.Field>
          <label>Job Description</label>
          <Form.Input
            value={description}
            onChange={(e, { value }) => setDescription(value)}
          />
        </Form.Field>
        <Form.Field>
          <label>Salary</label>
          <Form.Input
            value={salary}
            onChange={(e, { value }) => setSalary(value)}
          />
          <Button type="submit">add</Button>
        </Form.Field>
      </Form>
      <button onClick={() => history.goBack()}>go back</button>
    </div>
  );
};

export default JobNew;