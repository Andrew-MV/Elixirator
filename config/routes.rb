Rails.application.routes.draw do
  root to: 'home#index'

  resources :user_sessions, only: [:new, :create, :destroy]
  resources :products, only: [:edit, :update, :destroy]

  get  'login'  => 'user_sessions#new',     :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
end
