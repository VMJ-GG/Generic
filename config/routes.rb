Rails.application.routes.draw do
  root 'static#index'

  # Static routes
  get '/cryptography', to: 'static#cryptography'
  get '/numeric_calculation', to: 'static#numeric_calculation'
end
