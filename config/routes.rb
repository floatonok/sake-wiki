Rails.application.routes.draw do
  root 'sake#index'

  get 'sake/index'

  get 'sake/show'

  get 'static/about'

  get 'static/faq'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
