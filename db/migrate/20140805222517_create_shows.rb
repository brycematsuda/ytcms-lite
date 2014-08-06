class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string  "name"
      t.integer "position"
      t.boolean "visible", :default => false
      t.timestamps
    end
  end
end
