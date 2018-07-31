class NotesController < ApplicationController
  def new # 사용자가 작성하는 페이지
  end
  
  def create # 입력을 받아 처리하는 페이지
    # views/notes/create.erb를 보여줘라!
    notes = Note.new
    notes.title = params[:input_title]
    notes.content = [:input_content]
    notes.save
    redirect_to '/notes/new'
  end
  
end
