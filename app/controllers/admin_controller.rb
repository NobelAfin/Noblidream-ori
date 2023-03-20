class AdminController < ApplicationController
  def index
  end

  def users
    @users = User.all.includes(:user)
  end

  def activity
    @activities = PublicActivity::Activity.all
  end

  def dreams
  end
end