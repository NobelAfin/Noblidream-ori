require 'test_helper'

class FriendsControllerTest < ActionDispatch::IntegrationTest
  test "should get new_best_friends" do
    get friends_new_best_friends_url
    assert_response :success
  end

end
