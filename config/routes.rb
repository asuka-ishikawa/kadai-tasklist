Rails.application.routes.draw do
  get 'toppages/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'tasks#index'     #root to: 'toppages#index'
  
  get 'login', to: 'settions#new'
  post 'login', to: 'settions#create'
  delete 'logout', to: 'settions#destroy'
  
  get 'signup', to: 'users#new'
  resources :tasks, only: [:index, :show, :new, :create]
  
  root to: 'toppages#index'
end