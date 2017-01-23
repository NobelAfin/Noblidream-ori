require 'test_helper'

class TravelControllerTest < ActionDispatch::IntegrationTest
  test "should get europe" do
    get travel_europe_url
    assert_response :success
  end

end
