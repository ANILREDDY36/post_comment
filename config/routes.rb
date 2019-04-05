Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get :friend_request, to: 'home#friend_request'
  post :send_request, to: 'home#send_request'
  root 'home#index'
end
