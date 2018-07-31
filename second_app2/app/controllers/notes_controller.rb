class NotesController < ApplicationController
  def new  # 사용자가 작성하는 페이지
  end
  
  def create  # 사용자의 입력을 받아 처리하는 페이지  # redirect를 통해 따로 html페이지를 만들지는 않았다
    @token = form_authenticity_token
    note = Note.new
    note.title = params[:input_title]
    note.content = params[:input_content]
    note.save
    puts note
    # TODO(해야할 일): 'notes/new' 로 리다이렉트 되는 걸 변경한다.
    redirect_to "/notes/new"
  end
  
  # Read (조회파트)
  def index
    @notes = Note.all  # 우표를 붙인다 <= 사용자에게 보여줘야함
  end
  
  def show
    @token = form_authenticity_token
    @note = Note.find params[:id] 
    @comments = @note.comment
  end
  
  # update
  def edit
    @token = form_authenticity_token
    @note = Note.find params[:id]
  end
  
  def update
    note = Note.find params[:id]
    note.title = params[:input_title]
    note.content = params[:input_content]
    note.save
    redirect_to "/notes/new"
  end
  
  # destroy
  def destroy
    @note = Note.find params[:id]
    @note.destroy
    redirect_to '/notes'
  end
end
