Poopgraph::Application.routes.draw do
  root 'users#new'

  resources :users, only: [:new, :create, :show]
end
