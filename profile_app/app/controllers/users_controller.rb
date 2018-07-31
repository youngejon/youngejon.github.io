class UsersController < ApplicationController
  # Create
  def new
    @token = form_authenticity_token
  end

  def create
    user = User.new
    user.name = params[:name]
    user.content = params[:content]
    user.save
    
  redirect_to "/users/new"
  end
  
  # Read
  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
    @token = form_authenticity_token
    
    @comments = Comment.all # 모델을 불러올 때 시작은 대문자로 해야되!
    @hobbies = Hobby.all
    end

  # Update
  def edit
    @user = User.find params[:id]
    @token = form_authenticity_token

  end
  
  def update
    user = User.new
    user.name = params[:name]
    user.content = params[:content]
    user.save
    redirect_to "/users/#{user.id}"
  end
  
  # Delete
  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to "/users"
  end
end
