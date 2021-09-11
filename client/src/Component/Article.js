import React from "react";
import { useHistory } from "react-router";


const Article = ({id, name, author, description, deleteArticle}) => {

  const history = useHistory();

  return (
    <div className='card'>
      <h1>{name}</h1>
      <h2>{author}</h2>
      <p>{description}</p>
      <button onClick={() => history.push(`/articles/${id}`)}>View Article</button>
      <button onClick={() => history.push(`/articles/${id}/edit`)}>Update Article</button>
      <button onClick={() => deleteArticle(id)}>Delete Article</button>
    </div>
  );
};

export default Article;
