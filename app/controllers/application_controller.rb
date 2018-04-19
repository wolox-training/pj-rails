class ApplicationController < ActionController::Base
  include Pundit
  ## TODO implement authentication
  # protect_from_forgery with: :null_session
  def initialize_omniauth_state
    session['omniauth.state'] = response.headers['X-CSRF-Token'] = form_authenticity_token
  end
end
