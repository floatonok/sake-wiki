require 'test_helper'

class SakeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sake_index_url
    assert_response :success
  end

  test "should get show" do
    get sake_show_url
    assert_response :success
  end

end
