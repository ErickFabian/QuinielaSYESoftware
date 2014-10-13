Rails.application.routes.draw do
  root 'home#show'
  devise_for :users

  namespace :admin do
    root 'quinielas#index'
    resources :teams
    resources :quinielas
  end
  
  resources :choices
  resources :quinielas, only: [:index, :show, :suscribe] do
    member do 
      post :suscribe, :unsuscribe
    end
  end
end