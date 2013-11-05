class DumpsController < ApplicationController

  expose(:user) do
    User.where('username = :login OR email = :login', login: login).first
  end

  def create
    user.login(params[:password])
    #set the created dump to this user
  end

  def login
    params[:login]
  end
end
