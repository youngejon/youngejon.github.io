Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # Create
  get '/notes/new' => 'notes#new'
  post '/notes' => 'notes#create' # routing은 먼저 동사를 본다! # RESTful URI는 자원을 표현하는 데 중점을 두어야한다
                                  # /notes/create와 같은 행위에 대한 표현이 들어가서는 안된다!
  # Read
  get '/notes' => 'notes#index'
  get '/notes/:id' => 'notes#show'  # notes의 id는 input tag의 name같은 것
                                    # routing에도 정보를 실어 보낼 수 있다!
  # Update
  get '/notes/:id/edit' => 'notes#edit' # Q. edit 라우터를 어떻게 설정해줄까? 
                                        # /notes/edit/:id? /notes/:id/edit? 
                                        # edit같은 경우에는 id 값이 필요하다 ==> 어떤 글을 수정할지!
  patch '/notes/:id' => 'notes#update'
  
  # Destroy
  delete '/notes/:id' => 'notes#destroy'
  
  
  
# Comment
  # Create
  post '/comments' => 'comments#create'
  
  # Destroy
  delete '/comments/:id' => 'comments#destroy'
end
