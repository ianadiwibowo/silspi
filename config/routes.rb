Rails.application.routes.draw do
  resources :certification_schemes do
    resources :competency_units
  end
  get '/reset', to: 'development#reset'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
