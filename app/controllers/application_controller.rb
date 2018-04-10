class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  ## TODO implement authentication
  # protect_from_forgery with: :exception
end
