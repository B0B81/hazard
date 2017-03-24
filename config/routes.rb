Rails.application.routes.draw do
  resources :hazard_symbols
    devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :companies
  resources :substances
  resources :hphrases
  resources :pphrases
  resources :rphrases

  root "substances#index"
end
