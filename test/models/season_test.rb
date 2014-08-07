require 'test_helper'

class SeasonTest < ActiveSupport::TestCase
  test "season name must not be empty" do
    season = Season.new
    assert season.invalid?
    assert season.errors[:name].any?
  end

  test "season permalink must not be empty" do
    season = Season.new(:name => "No permalink!")
    assert season.invalid?
    assert season.errors[:permalink].any?
  end

  test "season permalink must be unique" do
    season = Season.new(:name => "Not A Unique Season", :permalink => seasons(:not_unique).permalink)
    assert season.invalid?
    assert season.errors[:permalink].any?
  end
end
