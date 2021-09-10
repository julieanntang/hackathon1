class Api::ArticlesController < ApplicationController

  def index
    articles = Article.all
    render json: articles
  end
  
  def show
    article = Article.find(params[:id])
    render json: article
  end
  
  def create
    article = Article.new(article_params)
    if article.save
      render json: article
    else
      render json: {errors: article.errors}
    end
  end
  
    def update
      article = Article.find(params[:id])
      if article.update(article_params)
        render json: article
      else
        render json: {errors: article.errors}
      end
    end
  
    def destroy
      article = Article.find(params[:id])
      if article.destroy
         render json: article
      else
        render json: {errors: article.errors}
      end
    end
  
    private
  
    def article_params
      params.require(:article).permit(:name, :author, :description)
    end
    
end
