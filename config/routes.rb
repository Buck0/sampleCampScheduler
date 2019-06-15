Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  #get 'campers/new'

  #get 'sessions/new'

  #get 'static_pages/home'

  get '/help', to: 'static_pages#help'
  
  get '/home', to: 'static_pages#admin', as: 'admin'
  
  #root 'static_pages#admin'
  
  get '/campers', to: 'campers#new'
  post '/campers', to: 'campers#create'
  get '/campers/all', to: 'campers#index'
  get '/schedule', to: 'campers#schedule'
  post '/schedule', to: 'campers#config'
  delete '/reset', to: 'campers#reset'
  delete '/disintigrate', to: 'campers#disintigrate'
  delete '/destroy', to: 'campers#destroy'
  
  get '/make', to: 'campers#trial', as: 'trial'
  #post '/trial', to: 'campers#make'
  #get '/make', to: 'campers#make'
  
  post '/doit', to: 'campers#doit'
  get '/better', to: 'campers#better'
  
  get '/patch_notes', to: 'static_pages#patch_notes'
  
  get '/campers/:id/assign', to: 'campers#assign', as: 'assign_camper'
  post '/campers/:id/assign', to: 'campers#set', as: 'set_camper'
  
  get '/campers/:id/reassign', to: 'campers#reassign', as: 'reassign'
  post '/campers/:id/reassign', to: 'campers#again', as: 'again'
  
  delete '/rescind', to: 'campers#rescind'
  
  post '/toggle', to: 'campers#toggle'
  
  #get '/assign', to: 'campers#assign'
  
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
