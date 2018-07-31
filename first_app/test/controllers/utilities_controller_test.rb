require 'test_helper'

class UtilitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get utilities_index_url
    assert_response :success
  end

  test "should get pick_lucky_numbers" do
    get utilities_pick_lucky_numbers_url
    assert_response :success
  end

  test "should get get_stock_info" do
    get utilities_get_stock_info_url
    assert_response :success
  end

end
