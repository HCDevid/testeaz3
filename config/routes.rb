Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get '/google908b5ad4963c9554', to: 'visitors#google_verify'
  get '/jobs', to:'visitors#jobs'
  get '/faq', to:'visitors#faq'
  get '/hours', to:'visitors#hours'
end
