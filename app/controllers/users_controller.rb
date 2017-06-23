class UsersController < ApplicationController
 def edit
  @nickname = current_user.nickname
  @email = current_user.email
 end
 def update
  @nickname = current_user.nickname
  @email = users.where(e_mail:current_user.email)
 end

end
