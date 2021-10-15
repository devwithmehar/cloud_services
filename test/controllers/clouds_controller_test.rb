require "test_helper"

class CloudsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clouds_index_url
    assert_response :success
  end

  test "should get show" do
    get clouds_show_url
    assert_response :success
  end
end
