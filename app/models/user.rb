class User < ApplicationRecord
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, :last_name, presence: true
=======
=======
>>>>>>> 7bcf9a1... Devise implemented
=======
>>>>>>> 7bcf9a1... Devise implemented
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 7bcf9a1... Devise implemented
=======
  # Include default devise modules.
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable,
         :validatable
  include DeviseTokenAuth::Concerns::User
>>>>>>> 9a9b2e1... implemeneted devise-token-auth
=======
>>>>>>> 7bcf9a1... Devise implemented
=======
  # Include default devise modules.
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable,
         :validatable
  include DeviseTokenAuth::Concerns::User
>>>>>>> 9a9b2e1... implemeneted devise-token-auth
=======
>>>>>>> 7bcf9a1... Devise implemented
=======
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
          #, :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
>>>>>>> 9a9b2e1... implemeneted devise-token-auth
end
