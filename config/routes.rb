Rails.application.routes.draw do
  get 'bookings/create'
  get 'profile', to: 'users#profile'
  devise_for :users
  resources :users, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :articles, except: :index do
    resources :bookings, only: :create
  end
  root "pages#home"
end
