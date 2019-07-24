Rails.application.routes.draw do




  devise_for :users


  root to: 'pages#home'

  resources :users
  resources :organisations
  resources :workshops , only: [ :index, :show, :new, :edit ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
