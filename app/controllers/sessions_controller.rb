class SessionsController < ApplicationController
  def new
    user = User.new
  end

  def create
    user = User.confirm(params.permit(:email, :password))
    if user
      login(user)
      redirect_to user
    else
      flash[:message] = 'email or password not found'
      render :new
  end
end

  def destroy
    logout
    redirect_to root_path
  end
end
