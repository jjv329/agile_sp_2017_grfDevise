class UsersController < ApplicationController

  def show
    @user = User.find(params[id])
  end

  def sign_out
  session.delete(:user_id)
  @current_user = nil
end

  def destroy
    sign_out
    redirect_to root_url
  end

end
