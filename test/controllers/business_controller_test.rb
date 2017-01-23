require 'test_helper'

class BusinessControllerTest < ActionDispatch::IntegrationTest
  test "should get entrepeneur" do
    get business_entrepeneur_url
    assert_response :success
  end

end
