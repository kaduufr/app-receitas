class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path(resource)
    root_path
    end

  def after_sign_out_path(resource)
    auth_path
  end
end
