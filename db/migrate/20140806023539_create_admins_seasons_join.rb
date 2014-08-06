class CreateAdminsSeasonsJoin < ActiveRecord::Migration
  def change
    create_table :admins_seasons, :id => false do |t|
      t.integer "admin_id"
      t.integer "season_id"
    end
    add_index :admins_seasons, ["admin_id", "season_id"]
  end
end
