Rails.application.routes.draw do
  root 'home#show'
  devise_for :users

  namespace :admin do
    root 'quinielas#index'
    resources :teams
    resources :games
    resources :quinielas
  end

  resources :teams, only: [:index, :show]
  resources :quinielas, only: [:index, :show, :edit, :update]
  resources :choices
end