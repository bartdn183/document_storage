class UsersController < ApplicationController
  before_action :set_users, only: [:users_access, :destroy, :activate, :category_access]
  before_action :pending_users, only: [:users_access, :destroy, :activate]
  before_action :set_user, only: [:destroy, :activate, :category_access]

  def users_access
  end

  def category_access
    @user.update(category: params[:category_ids])
  end

  def activate
  	@user.update(user_type: "visitor")
  end

  def destroy
  	@user.destroy
  end

  private

  def pending_users
  	@pending_users = User.where(user_type:"pending")
  end

  def set_users
  	@users = User.where.not(user_type: "pending")
  end

  def set_user
  	@user = User.find(params[:id])
  end

end
