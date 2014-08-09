class SessionsController < ApplicationController
  skip_before_action :require_owner_login, only: [:new, :create]

  #POST   /sessions(.:format)    
  def create
  end

  #GET    /sessions/new(.:format)
  def new
  end

  #DELETE /sessions/:id(.:format)
  def destroy
    reset_session
    redirect_to root_path
  end

end
