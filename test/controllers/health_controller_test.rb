require 'test_helper'

class HealthControllerTest < ActionDispatch::IntegrationTest
  test "should get espiritual" do
    get health_espiritual_url
    assert_response :success
  end

end
