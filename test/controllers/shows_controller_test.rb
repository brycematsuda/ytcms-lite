require 'test_helper'

class ShowsControllerTest < ActionController::TestCase
  setup do
    session[:admin_id] = "1"
    session[:admin] = "admin@example.com"

    @show = shows(:one)
    @update = {
      :name => 'Show Two',
      :position => 2,
      :visible => true
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create show" do
    assert_difference('Show.count') do
      post :create, show: @update
    end

    assert_redirected_to action: "index"
  end

  test "should show show" do
    get :show, id: @show
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @show
    assert_response :success
  end

  test "should update show" do
    patch :update, id: @show, show: @update
    assert_redirected_to action: "index"
  end

  test "should destroy show" do
    assert_difference('Show.count', -1) do
      delete :destroy, id: @show
    end

    assert_redirected_to action: "index"
  end
end
