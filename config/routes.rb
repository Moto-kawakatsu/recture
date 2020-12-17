Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  delete "messages/:id" => "messages#destroy"
  get 'comments/index'
  delete 'messages' => 'messages#destroy'
  delete 'responses' => 'responses#destroy'
  get 'responses/create' => 'responses#create'
  get 'agrees' => 'agrees#show'
  get 'explanations' => 'explanations#index'
  get 'tips/story' => 'tips#story'
  get 'tips/question' => 'tips#question'
  get 'tips/hours' => 'tips#hours'

  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, except: [:show] do
    resources :messages, only: [:index, :new, :create, :destroy]
  end

  resources :messages, only: [:index, :new, :create, :destroy] do
    resources :comments
  end

  resources :comments do
    resources :agrees, only: [:create, :destroy]
  end

  resources :comments do
    resources :responses, only: [:new, :create, :destroy]
  end

end
