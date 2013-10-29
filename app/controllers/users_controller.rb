class UsersController < ApplicationController

  expose(:user, attributes: :user_params)
  expose(:dumps) { user.dumps }

  def new
    user.dumps.build
    render 'new'
  end

  def create
    if user.save
      redirect_to user_path(user)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :username,
      :email,
      :password,
      :password_confirmation,
      dumps_attributes: [
        :kind,
        :color,
        :weight,
        :duration
      ]

    )
  end

end
