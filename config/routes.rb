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
  get 'tips/lists' => 'tips#lists'
  get 'tips/questions' => 'tips#questions'
  get 'tips/hours' => 'tips#hours'
  get 'tips/levels' => 'tips#levels'
  get 'tips/commentnum' => 'tips#commentnum'
  get 'rooms/students' => 'rooms#students'
  get 'messages/students' => 'messages#students'
  get 'messages/list' => 'messages#list'
  get 'diaries/count_words' => 'diaries#count_words'
  get '/users/sign_out' => 'devise/sessions#destroy'

  root to: "rooms#index"
  resources :users, only: [:edit, :update] do
    resources :diaries, only: [:index, :new, :create,:destroy, :show]  end

  resources :rooms do
    resources :messages, only: [:index, :new, :create, :destroy]
  end

  resources :messages, only: [:index, :new, :create, :destroy] do
    resources :comments, only: [:index, :new, :create, :destroy]
  end

  resources :comments do
    resources :agrees, only: [:create, :destroy]
  end

  resources :comments do
    resources :responses, only: [:new, :create, :destroy]
  end

  resources :comments do
    resources :tips
  end

  resources :diaries do
    resources :replies, only: [:new, :create, :destroy]
  end
end
