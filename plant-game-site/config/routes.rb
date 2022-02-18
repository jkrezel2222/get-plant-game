Rails.application.routes.draw do
  
  root 'plant#index'
  
  get 'plant/index'
  get 'plant/dashboard'
  
  get "plant", to: "plant#index", as: :plant
  get "dashboard", to: "plant#dashboard", as: :dashboard

  get ':controller(/:action(/:id))'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
