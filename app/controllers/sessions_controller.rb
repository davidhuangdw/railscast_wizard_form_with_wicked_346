class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user.try(:authenticate, params[:password])
      session[:user_id]=user.id
      redirect_to root_path, notice:'Log in successfully.'
    else
      flash.now[:error]= 'Invalid email or password.'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice:'Log out successfully.'
  end
end
