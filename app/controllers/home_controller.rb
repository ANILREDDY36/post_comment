class HomeController < ApplicationController
  def index; end

  def friend_request
    @user_friends = current_user.user_friends
  end

  def send_request
    UserFriend.create(user_id: current_user.id, friend_id: params[:user])
    redirect_to friend_request_path
  end
end
  