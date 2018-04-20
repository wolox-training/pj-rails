
Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :posts
  namespace :api do
    namespace :v1 do
        resources :books, only: [:index, :show] do
          collection do
            get '/info', to: "books#info"
          end
        end
        resources :rents, only: [:index, :create]
        resources :book_suggestions, only: [:index, :create, :new]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
