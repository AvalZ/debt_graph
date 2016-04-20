Rails.application.routes.draw do
  resources :participants
  resources :groups
  root to: 'visitors#index'
end
