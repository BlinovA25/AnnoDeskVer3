Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :users


  scope '/admin' do
    resources :users
  end
  resources :announcements do
    resources :comments
  end

  resources :comments
  resources :roles

  get 'index', to: 'announcements#index'
  get 'users_path', to: 'users#index'

  root 'announcements#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
