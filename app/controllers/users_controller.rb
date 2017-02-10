class UsersController < ApplicationController
	before_action :authenticate_user!

  def show
	  @user = current_user
  end

  def after_update_path_for(resource)
    current_user
	end

end
