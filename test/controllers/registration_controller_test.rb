require 'test_helper'

class RegistrationControllerTest < ActionDispatch::IntegrationTest
  test "should get introduction" do
    get registration_introduction_url
    assert_response :success
  end

end
