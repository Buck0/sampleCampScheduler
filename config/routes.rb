Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  #get 'campers/new'

  #get 'sessions/new'

  #get 'static_pages/home'

  get '/help', to: 'static_pages#help'
  
  get '/admin', to: 'static_pages#admin'
  
  #root 'static_pages#admin'
  
  get '/campers', to: 'campers#new'
  post '/campers', to: 'campers#create'
  get '/campers/all', to: 'campers#index'
  get '/schedule', to: 'campers#schedule'
  post '/schedule', to: 'campers#config'
  delete '/reset', to: 'campers#reset'
  delete '/disintigrate', to: 'campers#disintigrate'
  delete '/destroy', to: 'campers#destroy'
  
  root 'sessions#new'
  
  #root 'static_pages#home'
  
  get    '/new',     to: 'users#new'
  post   '/new',     to: 'users#create'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :campers
  resources :password_resets,     only: [:new, :create, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
