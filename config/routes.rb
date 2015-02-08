Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get '/google908b5ad4963c9554', to: 'visitors#google_verify'
end
