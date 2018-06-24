Rails.application.routes.draw do

  resources :users do
    resources :items, only: [:create, :new]
  end

  get 'users/show'

  devise_for :users
  root 'users#show'
end
