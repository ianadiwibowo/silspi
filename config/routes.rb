Rails.application.routes.draw do
  get '/certification_providers/refresh_uploaded_profile_photo', to: 'certification_providers#refresh_uploaded_profile_photo'
  resources :certification_providers
  resources :certification_schemes do
    resources :competency_units
  end
  get '/reset', to: 'development#reset'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
