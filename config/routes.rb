Rails.application.routes.draw do

  get "/", to: "welcomes#index", as: "root"
  resources :welcomes, only: [:index]
  resources :sessions, only: [:new, :create, :destroy]


  get "/logout", to: "sessions#destroy", as: "logout"
  get "/sign_in", to: "sessions#new", as: "sign_in"
  
end
