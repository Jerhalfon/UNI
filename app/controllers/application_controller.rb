class ApplicationController < ActionController::Base
  before_action :set_devise_redirect_path, unless: :devise_controller?
  include Pundit

  def set_devise_redirect_path
    cookies[:redirect_path] = request.path
    store_location_for(:user, request.path)
  end

  def after_sign_out_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || cookies[:redirect_path] || root_path
  end
end
