Rails.application.routes.draw do

  get '/user' => 'users#show', as: :user_root



  devise_for :users
  root 'users#show'
end
