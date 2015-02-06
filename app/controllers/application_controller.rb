class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  def current_user
  	return User.find_by_auth_token(request.headers['X-Auth-Token'])
  end
end
