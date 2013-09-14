class API::UsersController < ApplicationController

  def index
    @users = Users.all
    respond_to do |format|
      format.xml { render :xml => @people }
    end
  end


end