class UsersController < ApplicationController
  before_action :set_users, only: [:users_access, :destroy, :activate, :category_access, :delete_user_cat]
  before_action :pending_users, only: [:users_access, :destroy, :activate, :category_access, :delete_user_cat]
  before_action :set_user, only: [:destroy, :activate, :delete_user_cat]
  before_action :set_categories, only: [:users_access, :category_access, :delete_user_cat, :activate, :destroy]

  def delete_user_cat
    @cat_user = CategoryUser.find_by(category_id: params[:cat_id], user_id: @user.id)
    @cat_user.destroy
  end

  def users_access
  end

  def category_access
      if params[:categories]
        params[:categories].each { |category|
          CategoryUser.create(user_id: params[:user_id], category_id: category)
        }
      end
  end

  def activate
  	@user.update(user_type: "visitor")
  end

  def destroy
  	@user.destroy
  end

  private

  def set_categories
    @categories = Category.order(name: :asc)
  end

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
