require 'test_helper'

class AmericaControllerTest < ActionDispatch::IntegrationTest
  test "should get costa_rica" do
    get america_costa_rica_url
    assert_response :success
  end

end
