Rails.application.routes.draw do
  resources :competency_units
  resources :certification_schemes
  get '/reset', to: 'development#reset'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
