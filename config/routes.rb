Rails.application.routes.draw do

  devise_for :users

  resources :users do
    resources :items, only: [:create, :new, :destroy]
    resources :completed_items, only: :destroy
  end

  get '/my_profile' => 'users#show', as: :user_root

  root 'users#show'
end
