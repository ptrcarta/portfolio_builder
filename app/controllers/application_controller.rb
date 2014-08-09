class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_owner_login
  
  private

  def current_owner
    return nil unless session[:owner_id]
    Owner.where(id: session[:owner_id]) 
  end

  def require_owner_login
    redirect_to root_path unless current_owner
  end
end
