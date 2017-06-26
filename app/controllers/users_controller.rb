class UsersController < ApplicationController

 def edit
  @nickname = User.where(user_id: current_user.id)

  @email = User.where(user_id: current_user.id)
 end

 def update
  @nickname = User.where(user_id: current_user.id)
  @email = User.where(user_id: current_user.id)
 end

end
