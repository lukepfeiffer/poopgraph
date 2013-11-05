Poopgraph::Application.routes.draw do
  root 'users#new'

  resources :users, only: [:new, :create, :show]

  resources :dumps, only: :create
end
