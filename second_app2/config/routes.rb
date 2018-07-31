Rails.application.routes.draw do
#Notes

  # Create
  get '/notes/new'=> 'notes/new'
  post '/notes' => 'notes#create' # notes를 보내는거야
  
  # Read
  get '/notes' => 'notes#index' # notes를 달래!
  get '/notes/:id' => 'notes#show'

  # Update
  get '/notes/:id/edit' => 'notes#edit'
  patch '/notes/:id' => 'notes#update'


  # Destroy
  delete '/notes/:id' => 'notes#destroy'
 
# Comment
  # Create
  post '/comments' => 'comments#create'
  
  # Destroy
  delete '/comments/:id' => 'comments#destroy'

##################  Review   ###########################################

  # Create
  get '/notes2/new' => 'notes2'
  get '/notes2/create' => 'notes2#create'
  
  # Read
  get '/notes2'=> 'notes2#index'
  get '/notes2/:id' => 'notes2#show'
 
  # Update
  get '/notes2/:id/edit' => 'notes2#edit'
  get '/notes2_update' => 'notes2#update'
  
  
  # Destroy
  get '/notes2/:id/destroy' => 'notes2#destroy'
 
end
