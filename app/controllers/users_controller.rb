class UsersController < ApplicationController
  def users_access
  	@users = User.all
  end

  def category_access
  	
  end
end
