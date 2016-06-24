Rails.application.routes.draw do
  # get 'sessions/new'
  #
  # get 'sessions/create'
  #
  # get 'sessions/destroy'

  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'

  resources :sessions, only: [:new, :create, :destroy]

  resources :users
  resources :sakes

  root 'sakes#index'

  get '/about', to: 'static#about'

  get '/faq', to: 'static#faq'

  get 'sakes/:id', to: 'sakes#show', as: 'type'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
