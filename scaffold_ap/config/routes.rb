Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'
  resources :articles # article은 회원만
  resources :notes  # note는 누구나
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
