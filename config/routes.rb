Rails.application.routes.draw do
  root 'sake#index'

  get '/about', to: 'static#about'

  get '/faq', to: 'static#faq'

  get 'sake/:id', to: 'sake#show', as: 'type'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
