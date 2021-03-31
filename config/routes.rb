Rails.application.routes.draw do

  devise_for :creatrixes

  get 'digitales_dot_gg/homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'tales#index'

  resources :tales


end
