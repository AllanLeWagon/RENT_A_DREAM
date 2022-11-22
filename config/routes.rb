Rails.application.routes.draw do
  get 'articles/new'
  get 'articles/index'
  get 'articles/create'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
