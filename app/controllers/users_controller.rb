class UsersController < ApplicationController

  expose(:user, attributes: :user_params)
  expose(:dumps)
  expose(:dump)

  def create
    if user.save
      redirect_to user_path(new_user)
    else
      render :new
    end
  end

  private

  def user_params
    params[:user].permit(
      :username,
      :email,
      dumps_attributes: [
        :color,
        :duration,
        :kind,
        :weight
      ]
    )
  end


end
