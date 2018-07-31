class CommentsController < ApplicationController
  # Comment controller 만들기!  # Create와 destroy액션만 있으면 된다! why?
  def create
    comment = Comment.new
    comment.content = params[:input_content]
    comment.note_id = params[:note_id]  # note_id를 받아오기 위해 조금 복잡하게 만들었네.. note.id는 안되네 뭐징...
    comment.save
    redirect_to "/notes/#{comment.note.id}" # comment가 save되면서 id가 생긴다 ==> 불러오면 끝!
    
  end
  
  def destroy
    comment = Comment.find params[:id]
    comment.destroy
    # redirect_to "/notes/#{comment.note.id}"
    redirect_to "/notes/#{comment.note.id}"
  end
  
end
 