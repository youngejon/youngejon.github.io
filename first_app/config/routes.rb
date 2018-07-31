Rails.application.routes.draw do
  root 'home#index' # root로 홈 화면 설정하기
  
  get 'utilities/index' # 'utilities#index'
  get 'utilities/pick_lucky_numbers'
  get 'utilities/get_stock_info'

  get '/animals/cat' #=> 'animals#cat'
  get '/animals/dog' #=> 'animals#dog'
  get '/animals'=> 'animals#index'
  
  get '/musics' => 'musics#index'
  get '/musics/music1' => 'musics#music1'
  get '/musics/music2' => 'musics#music2'
  get '/musics/music3' => 'musics#music3'
  
  # Notes controller만들기!_rails Create강의!
  
  get '/notes/new' => 'notes#new'
  get '/notes/create' => 'notes#create'
end
