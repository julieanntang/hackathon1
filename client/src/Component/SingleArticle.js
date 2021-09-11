import React, { useState, useEffect } from "react";
import { useHistory } from "react-router";
import axios from "axios";

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
    <div>
      <h1>{article.name}</h1>
      <h2>{article.author}</h2>
      <p>{article.description}</p>
      <button onClick={() => history.goBack()}>go back</button>
    </div>
  );
};

export default SingleArticle;