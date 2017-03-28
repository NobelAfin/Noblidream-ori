require 'test_helper'

class SaveTimeAndExpensesControllerTest < ActionDispatch::IntegrationTest
  test "should get save_the_time_in_the_market" do
    get save_time_and_expenses_save_the_time_in_the_market_url
    assert_response :success
  end

end
