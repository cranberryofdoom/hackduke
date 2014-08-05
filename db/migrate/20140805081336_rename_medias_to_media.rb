class RenameMediasToMedia < ActiveRecord::Migration
  def change
  	rename_table :medias, :media
  end
end
