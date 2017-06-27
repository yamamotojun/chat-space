class UsersController < ApplicationController

def create

end


 def edit
  user = User.find(params[:id])
 end

 def update
  @user = User.find(params[:id])
  @user.update(user_params)
 end

private
 def user_params
  params.require(:user).permit(:email, :nickname)
 end
end

