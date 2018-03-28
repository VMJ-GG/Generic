Rails.application.routes.draw do
  root 'static#index'

  get '/cryptography', to: 'static#cryptography'

  get '/numeric_calculation', to: 'static#numeric_calculation'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
