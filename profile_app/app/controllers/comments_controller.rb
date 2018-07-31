class CommentsController < ApplicationController
  
  def create
    comment = Comment.new
    comment.content = params[:content]
    comment.user_id = params[:user_id]  # 왜 id가 아니라 user_id로 표기해야 하는가?
    comment.save
    
    redirect_to "/users/#{comment.user.id}" #??? redirect를 어디로 해야할까?
  end
  
  def destroy
    comment = Comment.find [:id]
    comment.destroy
    redirect_to '/users'
  end
  
end
