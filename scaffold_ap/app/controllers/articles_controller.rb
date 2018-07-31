class ArticlesController < ApplicationController
  
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    # binding.pry
    @article.save
    redirect_to @article # redirect_to "articles/#{@article.id}"'
    # redirect_to article_url(@article.id)
  end
  

  def index
    @articles = Article.all
  end
  
  def show
  end


  def edit
    check_user
    
  end
  
  def update
    @article.update(article_params)
    redirect_to @article
  end
  
  def destroy
    check_user
    @article.destroy
    redirect_to articles_path
  end
  
  private
  def set_article
    @article = Article.find(params[:id])
  end
  
  def article_params
    params.require(:article).permit(:title, :content, :user_id)
  end
  
  def check_user
    if @article.user != current_user
      redirect_to root_url
    end
  end
  
end
