class DumpsController < ApplicationController

  expose(:user) do
    User.where('username = :login OR email = :login', login: login).first
  end

  def create
    require 'pry'; binding.pry
    if user && user.authenticate(params[:user][:password])
      sign_in(user)
      user.dumps << new_dump
      redirect_to user_path(user)
    else
      render 'users/new'
    end
  end

  def new_dump
    require 'pry'; binding.pry
    Dump.new(type: 'foo', weitgh: 4)
    Dump.new(dump_params)
  end

  def dump_params
    params.require(:user).permit(
      dumps_attributes: [:type, :weight,]
    )
  end

  def login
    params[:user][:login]
  end
end
