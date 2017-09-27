class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_devise_parameters, if: :devise_controller?

  # redirect to urls index after
  # devise sign in
  def after_sign_in_path_for(resource)
    urls_path
  end
  
  # redirect to session new after
  # devise sign out
  def after_sign_out_path_for(resource)
    new_user_session_path
  end

  protected

  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :date_of_birth])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :date_of_birth])
  end
end
