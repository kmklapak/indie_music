class RegistrationsController < Devise::RegistrationsController

  protected

    def after_update_path_for(current_user)
    if current_user.role_id == 1 
     fan_path(current_user.role.name,current_user)
    elsif current_user.role_id == 2
     artist_path(current_user.role.name,current_user)
    else

    end 
    end
end