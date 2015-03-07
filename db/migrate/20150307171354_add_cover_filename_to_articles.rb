class AddCoverFilenameToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :cover_filename, :string
  end
end
