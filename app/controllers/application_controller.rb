class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:profile]
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || root_path(anchor: 'redirect_logged')
  end

  def after_sign_up_path_for(resource)
    stored_location_for(resource) || root_path(anchor: 'redirect_logged')
  end
end
