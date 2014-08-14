require 'test_helper'

class EpisodesControllerTest < ActionController::TestCase
  setup do
    session[:admin_id] = "1"
    session[:admin] = "admin@example.com"
    @season = seasons(:one)
    @episode = episodes(:one)
  end

  test "should get index" do
    get :index, :season_id => @season.id
    assert_response :success
    assert_not_nil assigns(:episodes)
  end

  test "should get new" do
    get :new, :season_id => @season.id
    assert_response :success
  end

  test "should create episode" do
    assert_difference('Episode.count') do
      post :create, episode: { embed_code: @episode.embed_code, description: @episode.description, name: @episode.name, position: @episode.position, season_id: @episode.season_id, visible: @episode.visible }, :season_id => @season.id
    end

    assert_redirected_to action: "index", :season_id => @season.id
  end

  test "should show episode" do
    get :show, id: @episode, :season_id => @season.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @episode, :season_id => @season.id
    assert_response :success
  end

  test "should update episode" do
    patch :update, id: @episode, episode: { embed_code: @episode.embed_code, description: @episode.description, name: @episode.name, position: @episode.position, season_id: @episode.season_id, visible: @episode.visible }, :season_id => @season.id
    assert_redirected_to action: "index", :season_id => @season.id
  end

  test "should destroy episode" do
    assert_difference('Episode.count', -1) do
      delete :destroy, id: @episode, :season_id => @season.id
    end

    assert_redirected_to action: "index", :season_id => @season.id
  end
end
