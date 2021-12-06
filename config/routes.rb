Rails.application.routes.draw do
  devise_for :users
  resources :friendsses
  #get 'home/index'
  #root 'home#index'
  root 'friendsses#index'
  get 'home/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
