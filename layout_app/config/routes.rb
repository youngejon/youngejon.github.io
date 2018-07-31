Rails.application.routes.draw do
  root 'front_pages#home'
  
  get 'front_pages/home'

  get 'front_pages/help'

  get 'front_pages/about'

  get 'front_pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
