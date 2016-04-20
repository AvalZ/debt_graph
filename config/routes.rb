Rails.application.routes.draw do
  resources :debts
  resources :participants
  resources :groups
  root to: 'visitors#index'
end
