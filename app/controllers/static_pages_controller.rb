class StaticPagesController < ApplicationController
  def home
  end

  def help
  end
  
  def admin
    if !logged_in?
      redirect_to login_path
      flash[:danger] = 'Please Login to use Admin Functions'
    end
  end
end
