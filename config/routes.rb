Rails.application.routes.draw do
  resources :comments
  resources :announcements
  resources :users
  resources :roles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
