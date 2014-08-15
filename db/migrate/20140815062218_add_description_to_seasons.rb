class AddDescriptionToSeasons < ActiveRecord::Migration
  def up
    add_column("seasons", "description", :string, :after => "permalink")
  end

  def down
    remove_column("seasons", "description")
  end
end
