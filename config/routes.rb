
Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :posts
  namespace :api do
    namespace :v1 do
        resources :books, only: [:index, :show]
        resources :rents, only: [:index, :create]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
