require 'test_helper'

class FlatsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get flats_list_url
    assert_response :success
  end

  test "should get single" do
    get flats_single_url
    assert_response :success
  end

end
