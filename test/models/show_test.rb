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
end
