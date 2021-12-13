Rails.application.routes.draw do
  devise_for :users
  resources :users


  scope '/admin' do
    resources :users
  end

  resources :comments
  resources :announcements

  resources :roles

  get 'index', to: 'announcements#index'
  get 'users_path', to: 'users#index'

  root 'announcements#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
