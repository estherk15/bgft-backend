class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def update
    @user = User.find_by(user_id)
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :bio)
  end

end
