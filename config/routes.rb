Rails.application.routes.draw do

  resources :campers
  resources :activities
  resources :signups
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
