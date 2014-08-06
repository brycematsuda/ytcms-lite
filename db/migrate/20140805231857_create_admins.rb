class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string  "email", :default => "", :null => false, :limit => 100
      t.string  "hashed_password", :limit => 40
      t.timestamps
    end
    add_index("admins", "email")
  end
end
