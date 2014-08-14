require 'test_helper'

class AdminsControllerTest < ActionController::TestCase
  setup do
    session[:admin_id] = "1"
    session[:admin] = "admin@example.com"
    @admin = admins(:one)
    @update = {
     :email => 'update@example.com',
     :password => 'example'
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin" do
    assert_difference('Admin.count') do
      post :create, admin: @update
    end

    assert_redirected_to action: "index"
  end

  test "should show admin" do
    get :show, id: @admin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin
    assert_response :success
  end

  test "should update admin" do
    patch :update, id: @admin, admin: @update
    assert_redirected_to action: "index"
  end

  test "should destroy admin" do
    assert_difference('Admin.count', -1) do
      delete :destroy, id: @admin
    end

    assert_redirected_to action: "index"
  end
end
