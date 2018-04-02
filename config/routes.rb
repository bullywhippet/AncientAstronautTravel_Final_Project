Rails.application.routes.draw do
  get 'search/index'

  resources :tours, only: %i[index show]
  resources :categories, only: %i[index show]

  root to: 'tours#index'

  get 'search', to: 'search#index', as: 'search'

  get 'sale', to: 'tours#sale', as: 'sale'
  get 'new', to: 'tours#new', as: 'new'

  get 'pages/contact', to: 'pages#contact', as: 'contact'
  get 'contact', to: 'pages#contact'

  get 'pages/about', to: 'pages#about', as: 'about'
  get 'about', to: 'pages#about'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
end
