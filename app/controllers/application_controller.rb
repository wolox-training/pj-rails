class ApplicationController < ActionController::Base
  include Pundit
  ## TODO implement authentication
  protect_from_forgery with: :null_session
end
