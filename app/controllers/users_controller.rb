class UsersController < ApplicationController

 def edit
user = User.find(params[:id])
 end

 def update
  @user = User.find(params[:id])
  @user.update(user_params)
  binding.pry
 end

private
 def user_params
  params.require(:user).permit(:email, :nickname)
 end
end