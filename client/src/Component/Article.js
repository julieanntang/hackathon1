import React from "react";
import { useHistory } from "react-router";
import { Button } from "semantic-ui-react";


const Article = ({id, name, author, description, deleteArticle}) => {

  const history = useHistory();

  return (
    <div className='card'>
      <h1>{name}</h1>
      <h2>{author}</h2>
      <p>{description}</p>
      <Button onClick={() => history.push(`/articles/${id}`)}>View Article</Button>
      <Button color="blue" onClick={() => history.push(`/articles/${id}/edit`)}>Update Article</Button>
      <Button onClick={() => deleteArticle(id)}>Delete Article</Button>
    </div>
  );
};

export default Article;
