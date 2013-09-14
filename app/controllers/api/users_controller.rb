class API::UsersController < ApplicationController

  def index
    @users = User.all
    respond_to do |format|
      format.html { render :xml => @users }
      format.xml { render :xml => @users }
    end
  end

  def show
  	if(params[:id] == 'artist')
  		@users = User.find_all_by_role_id(2)
	elsif(params[:id] == 'fan')
	 	@users = User.find_all_by_role_id(1)
	elsif(params[:id] == 'admin')
	 	@users = User.find_all_by_role_id(0)
	else
	 	@users = nil
	end

    respond_to do |format|
      format.html { render :xml => @users }
      format.xml { render :xml => @users }
    end
  end

end