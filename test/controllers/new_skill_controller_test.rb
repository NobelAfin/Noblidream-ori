require 'test_helper'

class NewSkillControllerTest < ActionDispatch::IntegrationTest
  test "should get coding" do
    get new_skill_coding_url
    assert_response :success
  end

end
