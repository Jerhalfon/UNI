class ApplicationController < ActionController::Base

  before_action :set_devise_redirect_path, unless: :devise_controller?
  # for adding fields in sign up form
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :configure_permitted_parameters, if: :devise_controller?

  include Pundit
  before_action :store_location, :unless => :devise_controller?

  def set_devise_redirect_path
    cookies[:redirect_path] = request.path
    store_location_for(:user, request.path)
  end

  def after_sign_out_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || cookies[:redirect_path] || root_path
  end

  def store_location
    unless params[:controller] == "devise/sessions"
      url =  request.base_url + request.original_fullpath

      session[:user_return_to] = url
    end
  end

  def stored_location_for(resource_or_scope)
    session[:user_return_to] || super
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || root_path
  end

  def configure_permitted_parameters
      # For additional fields in app/views/devise/registrations/new.html.erb
      devise_parameter_sanitizer.permit(:sign_up, keys: [:photo, :photo_cache, :name, :last_name])
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  private

  # Overwriting the sign_out redirect path method to home
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
# def configure_permitted_parameters
#   devise_parameter_sanitizer.permit(:sing_up, keys: [:name])
#   devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar])
# end
