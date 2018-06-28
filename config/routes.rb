Rails.application.routes.draw do

  devise_for :users

  resources :users do
    resources :items, only: [:create, :new, :destroy]
  end

  get '/user' => 'users#show', as: :user_root

  root 'users#show'
end
