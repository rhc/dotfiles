# Extends the ApplicationController to add Pundit for authorization.
# Modify this file to change the behavior of an unauthorized error.
# Restart the server after modification of this file

module PunditHelper
  extend ActiveSupport::Concern

  included do
    include Pundit
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  end
  
  private

  def user_not_authorized
    flash[:alert] = "Access denied."
    redirect_to (request.referrer || root_path)
  end
end

ApplicationController.send :include, PunditHelper

