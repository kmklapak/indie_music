class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
    home_path
  end

	def after_update_path_for(resource)
    if current_user.role_id == 1 
     fan_path(current_user.role.name,current_user)
    elsif current_user.role_id == 2
     artist_path(current_user.role.name,current_user)
    else

    end 
	end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :role_id, :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:name, :email, :password, :password_confirmation, :current_password)
    end
  end
end
