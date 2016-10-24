class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private

  def user_params
    params.require(:user).permit(:name, :email, :current_city, :password, :profile_photo)
  end

end
