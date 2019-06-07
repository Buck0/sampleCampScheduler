class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def new
    if User.any?
      redirect_to login_path
    else
    end
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Scheduler!"
      redirect_to admin_path
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
 
  private

    def user_params
      params.require(:user).permit(:userName, :email, :password,
                                   :password_confirmation)
    end 
end
