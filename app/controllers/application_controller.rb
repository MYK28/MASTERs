class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resources)
    case resources
    when Admin
      root_path
    when Staff
      root_path
    end
  end

  def after_sign_out_path_for(resources)
    case resources
    when Admin
      new_admin_session_path
    when Staff
      new_staff_session_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name, :image])
  end
end
