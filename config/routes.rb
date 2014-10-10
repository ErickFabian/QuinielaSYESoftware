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
  resources :choices
  resources :quinielas, only: [:index, :show, :suscribe] do
      post :suscribe, :unsuscribe
  end
end