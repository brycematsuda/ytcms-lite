require 'test_helper'

class EpisodesControllerTest < ActionController::TestCase
  setup do
    @episode = episodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:episodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create episode" do
    assert_difference('Episode.count') do
      post :create, episode: { content: @episode.content, content_type: @episode.content_type, description: @episode.description, name: @episode.name, position: @episode.position, season_id: @episode.season_id, visible: @episode.visible }
    end

    assert_redirected_to episode_path(assigns(:episode))
  end

  test "should show episode" do
    get :show, id: @episode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @episode
    assert_response :success
  end

  test "should update episode" do
    patch :update, id: @episode, episode: { content: @episode.content, content_type: @episode.content_type, description: @episode.description, name: @episode.name, position: @episode.position, season_id: @episode.season_id, visible: @episode.visible }
    assert_redirected_to episode_path(assigns(:episode))
  end

  test "should destroy episode" do
    assert_difference('Episode.count', -1) do
      delete :destroy, id: @episode
    end

    assert_redirected_to episodes_path
  end
end
