class SessionsController < ApplicationController
  def new
    if !User.any?
      redirect_to new_user_path
    else
      if logged_in?
        redirect_to admin_path
        flash[:warning] = "Already logged in"
      end
    end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to admin_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
