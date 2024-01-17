class UsersController < ApplicationController
  def welcome
    @user = User.find(current_user.id)
  end 
  def show
    if params[:id].to_i == current_user.id
      redirect_to action: "welcome"
    else
      @user = User.find(params[:id])
    end
  end
end