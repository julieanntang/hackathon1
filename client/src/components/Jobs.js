import React, { useState, useEffect } from "react";
import axios from "axios";
import { Link } from "react-router-dom";
import { Header, Icon, Segment } from "semantic-ui-react";

const Jobs = () => {
    const [jobs, setJobs] = useState([]);
    useEffect(() => {
        getJobs();
    }, []);

    const getJobs = async () => {
        try {
            let res = await axios.get(`/api/jobs`);
            setJobs(res.data)
        } catch (err) {
            console.log(err);
        }
    };
    const deleteJob = async (id) => {
        try {
            let res = await axios.deleteJob(`/api/jobs/${id}`);
            setJobs(jobs.filter((j) => j.id !== id));
        } catch (err) {
            alert(err);
        }
    };

    const renderJobs = () => {
        return jobs.map((j) => {
            return (
                <Segment>
                <Header>{j.name}</Header>
                <br/>

                <Header>{j.description}</Header>
                <br/>

                <Header>Salary ${j.salary}</Header>
                <div>
                  <Link to={{ pathname: `jobs/${j.id}/edit`, job: j }}>edit</Link>
                  <Icon onClick={() => deleteJob(j.id)} name="trash"></Icon>
                </div>
                <br/>
              </Segment>

            );
        });
    };
    return (
        <div>
            <h1>Job Listings</h1>
            <Link to="jobs/new">New Job Listing</Link>
            {renderJobs()}
        </div>
    );
};

export default Jobs;