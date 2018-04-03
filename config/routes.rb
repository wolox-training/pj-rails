Rails.application.routes.draw do
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  mount_devise_token_auth_for 'User', at: 'auth'
  #devise_for :users
=======
  devise_for :users
>>>>>>> 7bcf9a1... Devise implemented
=======
  mount_devise_token_auth_for 'User', at: 'auth'
  #devise_for :users
>>>>>>> 9a9b2e1... implemeneted devise-token-auth
=======
  devise_for :users
>>>>>>> 7bcf9a1... Devise implemented
=======
  mount_devise_token_auth_for 'User', at: 'auth'
  #devise_for :users
>>>>>>> 9a9b2e1... implemeneted devise-token-auth
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
