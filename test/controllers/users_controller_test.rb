require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get users_access" do
    get users_users_access_url
    assert_response :success
  end

  test "should get category_access" do
    get users_category_access_url
    assert_response :success
  end

end
