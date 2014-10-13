Rails.application.routes.draw do
  resources :choices

  root 'home#show'
  devise_for :users

  namespace :admin do
    root 'quinielas#index'
    resources :teams
    resources :games
    resources :quinielas
  end
  
  resources :quinielas, only: [:index, :show, :suscribe] do
      member do 
        post :suscribe, :unsuscribe
        end
  end
end