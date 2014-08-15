require 'test_helper' 

class SeasonsControllerTest < ActionController::TestCase
  setup do
    session[:admin_id] = "1"
    session[:admin] = "admin@example.com"

    @show = shows(:one)
    @season = seasons(:one)
    @update = {
      :name => "Season Update",
      :show_id => @show.id,
      :position => 1,
      :visible => true,
      :permalink => "seasonupdate",
      :description => "Update this season!"
    }
  end

  test "should get index" do
    get :index, :show_id => @show.id
    assert_response :success
    assert_not_nil assigns(:seasons)
  end

  test "should get new" do
    get :new, :show_id => @show.id
    assert_response :success
  end

  test "should create season" do
    assert_difference('Season.count') do
      post :create, season: @update, :show_id => @show.id
    end

    assert_redirected_to action: "index", :show_id => @show.id
  end

  test "should show season" do
    get :show, id: @season
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @season, :show_id => @show.id
    assert_response :success
  end

  test "should update season" do
    patch :update, id: @season, season: seasons(:one).attributes, :show_id => @show.id
    assert_redirected_to action: "index", :show_id => @show.id
  end

  test "should destroy season" do
    assert_difference('Season.count', -1) do
      delete :destroy, id: @season, :show_id => @show.id
    end

    assert_redirected_to action: "index", :show_id => @show.id
  end
end
