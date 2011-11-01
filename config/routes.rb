Gitmeter::Application.routes.draw do
  get "about/index"
  get "home/index"
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  resources :users
  resources :sessions
  resources :password_resets
  root :to => 'home#index'
end
