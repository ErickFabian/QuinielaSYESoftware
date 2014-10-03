Rails.application.routes.draw do
  resources :predictors

  devise_for :users
  root 'home#show'
end