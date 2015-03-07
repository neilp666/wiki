class RenameCoverFilename < ActiveRecord::Migration
  def change
  	rename_column :articles, :cover_filename, :cover
  end
end
