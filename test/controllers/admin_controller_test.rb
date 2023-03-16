require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_index_url
    assert_response :success
  end

  test "should get users" do
    get admin_users_url
    assert_response :success
  end

  test "should get activity" do
    get admin_activity_url
    assert_response :success
  end

  test "should get dreams" do
    get admin_dreams_url
    assert_response :success
  end
end
