require 'test_helper'

class PublicControllerTest < ActionController::TestCase
  setup do
    @season = seasons(:one)
  end
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, :permalink => @season.permalink
    assert_response :success
  end

end
