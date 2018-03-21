Rails.application.routes.draw do
  resources :tours, only: %i[index show]

  root to: 'tours#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
