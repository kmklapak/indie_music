class StaticPagesController < ApplicationController
  def signup
  	if user_signed_in?
    	redirect_to :controller=>'static_pages', :action => 'home'
   	end
  end

  def about
  end

  def help
  end

  def home
  end

  def popular
  end

  def country
  end

  def genre
  end
end
