require 'test_helper'

class AccessControllerTest < ActionController::TestCase
  setup do
    session[:admin_id] = "1"
    session[:admin] = "admin@example.com"
  end

  test "should get login" do
    get :login
    assert_response :success
  end

end
