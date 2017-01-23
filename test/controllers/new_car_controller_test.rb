require 'test_helper'

class NewCarControllerTest < ActionDispatch::IntegrationTest
  test "should get car" do
    get new_car_car_url
    assert_response :success
  end

end
