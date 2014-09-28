Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  root to: 'sessions#new'
end
