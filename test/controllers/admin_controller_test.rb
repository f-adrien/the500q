require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_show_url
    assert_response :success
  end

  test "should get import" do
    get admin_import_url
    assert_response :success
  end

end
