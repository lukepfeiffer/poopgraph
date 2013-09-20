class UsersController < ApplicationController

  expose(:user)
  expose(:dumps)
  expose(:dump)

  def create
    if new_user = User.new(user_params).save
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
