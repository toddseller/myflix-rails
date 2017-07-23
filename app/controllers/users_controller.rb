class UsersController < ApplicationController
  def show
    p '*' * 50
    p @user = User.friendly.find(params[:id])
    render 'users/show'
  end
end
