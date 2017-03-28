require 'test_helper'

class HappyControllerTest < ActionDispatch::IntegrationTest
  test "should get espiritual" do
    get happy_espiritual_url
    assert_response :success
  end

end
