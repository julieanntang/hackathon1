import React, { useState, useEffect } from "react";
import { useHistory } from "react-router";
import axios from "axios";
import { Button } from "semantic-ui-react";

const SingleArticle = (props) => {
  console.log(props)

  const history = useHistory();

  const [article, setArticle] = useState([]);
  useEffect(() => {
    getArticle();
  }, []);

  const getArticle = async () => {
    try {
      let res = await axios.get(`/api/articles/${props.match.params.id}`);
      setArticle(res.data);
    } catch (error) {
      alert("error retrieving article")
      console.log(error);
    };
  };


  return (
    <div className='card'>
      <h1>{article.name}</h1>
      <h2>{article.author}</h2>
      <p>{article.description}</p>
      <Button onClick={() => history.goBack()}>go back</Button>
    </div>
  );
};

export default SingleArticle;