class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.integer "show_id"
      t.string  "permalink"
      t.integer "position"
      t.boolean "visible", :default => false
      t.timestamps
    end
    add_index("seasons", "show_id")
    add_index("seasons", "permalink")
  end
end
