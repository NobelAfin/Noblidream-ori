require 'test_helper'

class DreamsControllerTest < ActionDispatch::IntegrationTest
  test "should get my_own_business" do
    get dreams_my_own_business_url
    assert_response :success
  end

end
