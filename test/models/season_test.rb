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

  test "season name length must be greater than or equal to 5" do
    season = Season.new(:name => "K", :permalink => "shortname")
    assert season.invalid?
    assert_equal ["is too short (minimum is 5 characters)"], season.errors[:name]
  end

  test "season name length must be less than or equal to 100" do
    season = Season.new(:name => seasons(:long).name, :permalink => "toolong")
    assert season.invalid?
    assert_equal ["has already been taken", "is too long (maximum is 100 characters)"], season.errors[:name]
  end

  test "season permalink length must be greater than or equal to 5" do
    season = Season.new(:name => "Short Link", :permalink => "s")
    assert season.invalid?
    assert_equal ["is too short (minimum is 5 characters)"], season.errors[:permalink]
  end

  test "season permalink length must be less than or equal to 100" do
    season = Season.new(:name => "Long Name", :permalink => seasons(:long).name)
    assert season.invalid?
    assert_equal ["is too long (maximum is 20 characters)"], season.errors[:permalink]
  end
end
