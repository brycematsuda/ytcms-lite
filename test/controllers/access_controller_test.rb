require 'test_helper'

class AccessControllerTest < ActionController::TestCase
  setup do
    login_as(:admin)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

end
