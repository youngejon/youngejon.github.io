class NotesController < ApplicationController
  # Create
  def new
    # view파일에 있는 html.new.erb를 보여줘라!
    # rails 보안
    @token = form_authenticity_token
  end
  
    # 사용자의 입력을 받아 처리하는 페이지
  def create   # create action은 view파일 없이도 가능하다
    # puts '========================================'
    # puts params[:input_title]
    # puts params[:input_content]
    # puts '========================================'
    
    note = Note.new
    note.title = params[:input_title]
    note.content = params[:input_content]
    note.save
    # 이번에는 액션이 끝나고 create.html.erb를 보여주는게 아니라 redirect한다!
    # @우표를 붙이지 않는 이유는 사용자에게 갈 일이 없다!
    
    # 마지막에 이런 말이 숨겨져 있다! views/notes/create.html을 보여줘라!
    # 그런데 이 액션은 따로 html 파일을 만들지 않았으니깐 다시 new파일로 보낼거야!
    # TODO: '/notes/new'로 리다이렉트 되는 걸 변경한다
    # redirect_to '/notes/new'
    redirect_to "/notes/#{note.id}" # note.save를 했기 때문에 id가 생성된다!
  end
  
  # Read  조회파트 2가지 - index show
  def index # 게시판으로 치면 목록
    @notes = Note.all   # 사용자에게 보여주기 위해 @(우표)를 붙인다! Note들의 묶음이니깐 Notes로 표기하자!
  end
  
  def show
    puts '=================================='
    p params
    puts '=================================='
    # @note = Note.find 1
    @note = Note.find params[:id]
    @token = form_authenticity_token
    # @comments = @note.comments
    
  end
  
  # Update - edit와 update
  def edit  # 사용자 입력 new 액션과 비슷하다
    @note = Note.find params[:id]
    @token = form_authenticity_token
  end
  
  def update
    note = Note.find params[:id] # note를 새로 만들어주고 id로 찾은 note 값을 저장한다
    note.title = params[:input_title] # title 입력
    note.content = params[:input_content] # content 입력
    note.save # 저장
    redirect_to "/notes"
  end
  
  # Destroy
  def destroy
    @note = Note.find params[:id]
    @note.destroy
    # 모든 액션은 액션에 대응하는 view 페이지를 보여줘야 한다!
    redirect_to '/notes'
  end
  
  
end
