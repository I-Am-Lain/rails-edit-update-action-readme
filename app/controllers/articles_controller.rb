class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    render "new_or_edit"
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  # add edit and update methods here

  def edit
    @article = Article.find(params[:id])
    render "new_or_edit"
  end
  
  def update
    @article = Article.find(params[:id])
    @article.update(title: params[:article][:title], description: params[:article][:description])
    redirect_to article_path(@article)
  end
  
end
