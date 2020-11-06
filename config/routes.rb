Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  get 'comments/index'
  
  root to: "rooms#index"
  resources :users
  resources :rooms do
    resources :messages
  end
  resources :messages do
    resources :comments
end

  resources :comments do
    resources :agrees, only: [:create, :destroy]
end

end
