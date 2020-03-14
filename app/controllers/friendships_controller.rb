class FriendshipsController < ApplicationController
  def destroy
    friend = User.find(params[:id])
    friendship = Friendship.where(user_id: current_user, friend_id: friend.id).first
    friendship.destroy
    flash[:notice] = "#{friend.first_name} was successfully removed from your friends"
    redirect_to my_friends_path
  end
end