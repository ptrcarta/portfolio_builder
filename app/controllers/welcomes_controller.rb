class WelcomesController < ApplicationController
  skip_before_action :require_owner_login, only: [:index]

  #GET  /welcomes(.:format)
  def index
  end

end
