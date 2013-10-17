class UsersController < ApplicationController

  expose(:user, attributes: :user_params)
  expose(:dumps)
  expose(:dump)

  def create
    if user.save
      redirect_to user_path(user)
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  def user_params
    params.require(:user).permit(
      :username,
      :email,
      :password,
      :password_confirmation,
       dumps_attributes: [
         :color,
         :duration,
         :kind,
         :weight
      ]
    )
  end

end
