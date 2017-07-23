class UsersController < ApplicationController
  def show
    p '*' * 50
    p current_user
    p @user = User.friendly.find(params[:id]) || @user = User.find(params[:id])
    # p @user = User.find(params[:id])
    if @user.save
      render 'users/show'
    end
  end
end
