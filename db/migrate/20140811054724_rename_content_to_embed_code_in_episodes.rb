class RenameContentToEmbedCodeInEpisodes < ActiveRecord::Migration
  def up
    rename_column("episodes", "content", "embed_code")
  end

  def down
    rename_column("episodes", "embed_code", "content")
  end
end
