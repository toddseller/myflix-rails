class UsersController < ApplicationController
  def show
    p '*' * 50
    p current_user
    p @user = User.friendly.find(params[:id])
    # p @user = User.find(params[:id])
  end
end
