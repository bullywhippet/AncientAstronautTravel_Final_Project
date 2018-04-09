Rails.application.routes.draw do
  resources :tours, only: %i[index show] do
    collection do
      post :clear_cart
    end
  end

  resources :categories, only: %i[index show]

  get 'search/index'

  root to: 'tours#index'

  get 'search', to: 'search#index', as: 'search'

  get 'sale', to: 'tours#sale', as: 'sale'
  get 'new', to: 'tours#new', as: 'new'

  get 'pages/contact', to: 'pages#contact', as: 'contact'
  get 'contact', to: 'pages#contact'

  get 'pages/about', to: 'pages#about', as: 'about'
  get 'about', to: 'pages#about'

  post 'tours/:id/add_to_cart', to: 'tours#add_to_cart'
  post 'tours/:id/remove_from_cart', to: 'tours#remove_from_cart'
  get 'cart', to: 'tours#cart'
  get 'cart/checkout', to: 'tours#checkout'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
end
