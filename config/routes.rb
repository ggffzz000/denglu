Rails.application.routes.draw do
  get 'users/new'
  
  resources :users

  get '/help', to:'static_pages#help'

  get '/signup', to: 'users#new'

  get 'static_pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
