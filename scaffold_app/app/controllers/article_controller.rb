class ArticleController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :delete]
  
  def new
  end
  
  def create
    debugger
    @article = Article.new
    @article.title = params[:title]
    @article.content = params[:content]
    @article.save
    # redirect_to '/Articles'
    redirect_to articles_url
  end

  def index
  end
  
  def show
  end

  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
    def set_article    # set_article 액션은 외부에서 호출될 일이 없다!
      @article = Article.find(params[:id])
    end
    
    
    
end
