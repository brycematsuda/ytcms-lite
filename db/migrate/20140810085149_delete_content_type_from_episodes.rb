class DeleteContentTypeFromEpisodes < ActiveRecord::Migration
  def up
    remove_column("episodes", "content_type")
  end

  def down
    add_column("episodes", "content_type", :string)
  end
end
