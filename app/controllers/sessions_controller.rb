class SessionsController < ApplicationController
  def new
    user = User.new
  end

  def create
    user = User.confirm(params.permit(:email, :password))
    if user
      login(user)
      redirect_to root_path
    else
      flash[:error] = 'Email or password not found'
      render :new
  end
end

  def destroy
    logout
    redirect_to root_path
  end
end
