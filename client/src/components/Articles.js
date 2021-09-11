import React, { useEffect, useState } from "react";
import axios from "axios";
import Article from "./Article";


const Articles = (props) => {

  const [articles, setArticles] = useState([]);
  useEffect(() => {
    getArticles();
  }, []);

  const getArticles = async () => {
    try {
      let res = await axios.get("/api/articles");
      setArticles(res.data);
      console.log(res.data);
    } catch (error) {
      alert("error retrieving articles")
      console.log(error);
    };
  };


  const renderArticles = () => {
    return articles.map((a) => <Article deleteArticle={deleteArticle} key={a.id} {...a} />);
  };

  const deleteArticle = async (id) => {
    try {
      let res = await axios.delete(`/api/articles/${id}`);
      let filterArticles = articles.filter((a) => a.id !== id);
      setArticles(filterArticles);
    } catch (error) {
      alert(error);
      console.log("error");
    };
  };

  const showArticle = (id) => {
    let specificArticle = articles.filter((art) => art.id === id);
    return specificArticle;
  };


  return (
    <div>
      <h1>Articles</h1>
      <button onClick={() => props.history.push("/articles/new")}>Add New Article</button>
      <div>
      {renderArticles()}
      </div>
    </div>
  );
};

export default Articles;