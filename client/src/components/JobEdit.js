import axios from "axios";
import React, { useState } from "react";
import { Button, Form } from "semantic-ui-react";


const JobEdit = (props) => {
  
  const [name, setName] = useState(props.location.job.name);
  const [description, setDescription] = useState(props.location.job.description);
  const [salary, setSalary] = useState(props.location.job.salary);
  
  const id = props.match.params.id;

  const handleSubmit = async () => {
    await axios.put(`/api/jobs/${id}`, { name, description, salary });
    props.history.push("/jobs");
  };
  return (
    <div>
      <h1>Edit Job</h1>
      <p>{id}</p>
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
    </div>
  );
};

export default JobEdit;