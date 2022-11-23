Rails.application.routes.draw do
  get 'profile', to: 'users#profile'
  get 'articles/new'
  get 'articles/index'
  get 'articles/create'
  devise_for :users
  resources :users, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
