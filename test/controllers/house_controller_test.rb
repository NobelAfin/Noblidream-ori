require 'test_helper'

class HouseControllerTest < ActionDispatch::IntegrationTest
  test "should get buy_local_house" do
    get house_buy_local_house_url
    assert_response :success
  end

end
