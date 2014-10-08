Rails.application.routes.draw do
  root 'home#show'
  devise_for :users

  namespace :admin do
    root 'quinielas#index'
    resources :teams, :games, :quinielas
  end

  resources :teams, only: [:index, :show]
  resources :quinielas, only: [:index, :show]
end