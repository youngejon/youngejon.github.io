class ArticlesController < ApplicationController
  # before_action
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  
      # Create
  def new
  end

  def create
    @article = Article.new(article_params) # @article = Article.new('title: 'cc' content 'dd')
    @article.save
    redirect_to articles_url(@article) # 소문자로 articles_url # 같은말 redirect_to "article2/#{@article.id}"
    
  end
  
  # Read
  def index
  end
  
  def show
  end

  # Update
  def edit
  end

  def update
  end
  
  # Destroy
  def destroy
  end
  
  private # 외부에서 호출이 되는 액션이 아닌경우 private
  def set_article # action을 setting 해라!  # 외부에서 호출이 되는 액션이 아니다!
    @article = Article.find(params[:id])
  end
  
  def article_params
    params.require(:article).permit(:title, :content) # 이거 대체 왜 필요한거죠?
  end
end
