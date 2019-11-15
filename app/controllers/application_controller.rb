class ApplicationController < ActionController::Base
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

   def after_sign_up_path_for(resource)
    stored_location_for(resource) || root_path
  end
end
