class AddPasswordDigestToAdmins < ActiveRecord::Migration
  def up
    remove_column "admins", "hashed_password"
    add_column "admins", "password_digest", :string
  end

  def down
    remove_column "admins", "password_digest"
    add_column "admins", "hashed_password", :string
  end
end
