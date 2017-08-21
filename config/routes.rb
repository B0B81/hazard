Rails.application.routes.draw do
  devise_for :users
  resources :ghs_symbols
  resources :hazard_symbols
  resources :users
  resources :companies
  resources :substances
  resources :hphrases
  resources :pphrases
  resources :rphrases
  get 'substance/update_companies', as: 'update_companies'

  root "substances#index"
end
