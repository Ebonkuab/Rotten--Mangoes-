class Admin::UsersController < ApplicationController
  def index
    @admins = User.all.page(params[:page]).per(2)

    if current_user.admin != true  
      flash.now[:alert] = "current user does not have access to this page..."
      redirect_to movies_path   
    end 
  
  end

  def show
    @admin = User.find(params[:id])
  end 

end
