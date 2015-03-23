Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get '/google908b5ad4963c9554', to: 'visitors#google_verify'
  get '/jobs', to:'visitors#jobs', as: 'jobs'
  get '/faq', to:'visitors#faq', as: 'faq'
  get '/hours', to:'visitors#hours', as: 'hours'
  get '/mcdonalds', to:'visitors#mcdonalds', as: 'mcdonalds'
  get '/chipotle', to:'visitors#chipotle', as: 'chipotle'
  get '/little_caesars', to:'visitors#little_caesars', as: 'little_caesars'
  get '/big_ten_burrito', to:'visitors#big_ten_burrito', as: 'big_ten_burrito'
  get '/five_guys', to:'visitors#five_guys', as: 'five_guys'
end
