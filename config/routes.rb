Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  get 'comments/index'
  # post 'messages/new'
  # post 'messages/create'
  # post 'comments/new'
  # post 'comments/create'
  
  root to: "rooms#index"
  resources :users
  resources :rooms do
    resources :messages
  end
  resources :messages do
    resources :comments
end
end
