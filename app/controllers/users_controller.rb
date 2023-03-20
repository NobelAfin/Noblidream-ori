class UsersController < ApplicationController
  include PublicActivity::StoreController
  before_action :set_user
  
  def profile
    @user.update(views: @user.views + 1)
    @user.create_activity key: 'user.update', owner: current_user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
