require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  test "admin name must not be empty" do
    admin = Admin.new
    assert admin.invalid?
    assert admin.errors[:email].any?
  end

  test "admin name must be unique" do
    admin = Admin.new(:email => admins(:not_unique).email)
    assert admin.invalid?
    assert_equal ["has already been taken"], admin.errors[:email]
  end
end
