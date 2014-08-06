require 'test_helper'

class SeasonsControllerTest < ActionController::TestCase
  setup do
    @season = seasons(:one)
    @update = {
      :name => "Season Two",
      :permalink => "season2",
      :position => 2,
      :show_id => 1,
      :visible => false
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seasons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create season" do
    assert_difference('Season.count') do
      post :create, season: @update
    end

    assert_redirected_to season_path(assigns(:season))
  end

  test "should show season" do
    get :show, id: @season
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @season
    assert_response :success
  end

  test "should update season" do
    patch :update, id: @season, season: @update
    assert_redirected_to season_path(assigns(:season))
  end

  test "should destroy season" do
    assert_difference('Season.count', -1) do
      delete :destroy, id: @season
    end

    assert_redirected_to seasons_path
  end
end
