Rails.application.routes.draw do
  get 'sessions/new'

  #get 'static_pages/home'

  get '/help', to: 'static_pages#help'
  
  root 'static_pages#home'
  
  get    '/new',     to: 'users#new'
  post   '/new',     to: 'users#create'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
