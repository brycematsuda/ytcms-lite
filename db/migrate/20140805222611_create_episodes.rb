class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.integer "season_id"
      t.string  "name"
      t.integer "position"
      t.boolean "visible", :default => false
      t.string  "content_type"
      t.text    "content"
      t.text    "description"
      t.timestamps
    end
    add_index("episodes", "season_id")
  end
end
