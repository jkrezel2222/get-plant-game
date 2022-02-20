Rails.application.routes.draw do
  
  root to: "plant#index"
  
  get 'plant/index'
  get 'plant/dashboard'
  
  get "plant", to: "plant#index", as: :plant
  get "dashboard", to: "plant#dashboard", as: :dashboard
  get "plant", to: "plant#new", as: :plant_new
  post "plant", to: "plant#create"

  get "register", to: "registrations#new", as: :register
  post "register", to: "registrations#create"

  get "sign_in", to: "sessions#new", as: :sign_in
  post "sign_in", to: "sessions#create"

  # get "listings", to: "listings#index"
  # post "listings", to: "listings#create"

  delete "logout", to: "sessions#destroy"

  get ':controller(/:action(/:id))'

  resources :plant

  # resources :listings :listing

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
