require 'test_helper'

class GamerControllerTest < ActionDispatch::IntegrationTest
  test "should get assemble_pc_gamer" do
    get gamer_assemble_pc_gamer_url
    assert_response :success
  end

end
