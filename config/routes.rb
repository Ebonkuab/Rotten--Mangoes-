MovieAppRottenMangoes::Application.routes.draw do
  get "reviews/new"
  get "reviews/create"
  get "sessions/new"
  get "sessions/create"
  get "users/new"
  get "users/create"
  # get "movies/index"
  # get "movies/show"
  # get "movies/new"
  # get "movies/edit"
  resources :movies do 
    resources :reviews, only: [:new, :create]
  end 
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]  
  resources :admin, only: [:new, :create, :destroy] 

  
  namespace :admin do 
  resources :users, only: [:new, :create, :destroy, :index]
  
  end
   root to: 'movies#index'
end
