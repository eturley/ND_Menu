require 'test_helper'

class ProtectedControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get require_user" do
    get protected_controller_require_user_url
    assert_response :success
  end

end
