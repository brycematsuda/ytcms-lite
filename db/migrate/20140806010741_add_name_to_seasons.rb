class AddNameToSeasons < ActiveRecord::Migration
  def up
    add_column("seasons", "name", :string, :after => "show_id")
  end

  def down
    remove_column("seasons", "name")
  end
end
