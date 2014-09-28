Rails.application.routes.draw do

  root 'profiles#new'
  resources :profiles
  resources :sessions

  match '/signin', to: 'sessions#index', as: 'signin', via: :get
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

end
