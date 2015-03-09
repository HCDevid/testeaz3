Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get '/google908b5ad4963c9554', to: 'visitors#google_verify'
  get '/jobs', to:'visitors#jobs', as: 'jobs'
  get '/faq', to:'visitors#faq', as: 'faq'
  get '/hours', to:'visitors#hours', as: 'hours'
end
