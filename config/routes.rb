Rails.application.routes.draw do
<<<<<<< HEAD
  mount_devise_token_auth_for 'User', at: 'auth'
  #devise_for :users
=======
  devise_for :users
>>>>>>> 7bcf9a1... Devise implemented
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
