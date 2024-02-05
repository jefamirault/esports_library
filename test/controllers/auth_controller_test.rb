require "test_helper"

class AuthControllerTest < ActionDispatch::IntegrationTest
  test "should get new_session" do
    get auth_new_session_url
    assert_response :success
  end

  test "should get create_session" do
    get auth_create_session_url
    assert_response :success
  end

  test "should get logout" do
    get auth_logout_url
    assert_response :success
  end
end
