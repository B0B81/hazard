Rails.application.routes.draw do
  resources :ghs_symbols
  resources :hazard_symbols
    devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :companies
  resources :substances
  resources :hphrases
  resources :pphrases
  resources :rphrases
  get 'substance/update_companies', as: 'update_companies'

  root "substances#index"
end
