Rails.application.routes.draw do
  # Create
  get '/users/new' => 'users/new'
  post '/users' => 'users#create'
  
  # Read
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'
  
  # Update
  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'
  
  # delete
  delete '/users/:id' => 'users#destroy'
  
# Comment routing
  # Create
  post '/comments' => 'comments#create' 
  
  # Delete
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
