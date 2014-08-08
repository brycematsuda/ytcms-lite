require 'test_helper'

class ShowTest < ActiveSupport::TestCase
  test "show name must not be empty" do
    show = Show.new
    assert show.invalid?
    assert show.errors[:name].any?
  end

  test "show is not valid without a unique name" do
    show = Show.new(:name => shows(:already_taken).name)
    assert show.invalid?
    assert_equal ["has already been taken"], show.errors[:name]
  end

  test "show position must be greater than one" do
    show = Show.new(:name => "Negative One", :position => -1)
    assert show.invalid?
    assert_equal ["must be greater than 0"], show.errors[:position]
  end

  test "show position must be an integer" do
    show = Show.new(:name => "Float", :position => 1.2345)
    assert show.invalid?
    assert_equal ["must be an integer"], show.errors[:position]
  end

  test "show name length must be greater than or equal to 5" do
    show = Show.new(:name => "K")
    assert show.invalid?
    assert_equal ["is too short (minimum is 5 characters)"], show.errors[:name]
  end

  test "show name length must be less than or equal to 100" do
    show = Show.new(:name => shows(:long).name)
    assert show.invalid?
    assert_equal ["has already been taken", "is too long (maximum is 100 characters)"], show.errors[:name]
  end
end
