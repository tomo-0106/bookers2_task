class RenameFollowedImageIdColumnToRelationships < ActiveRecord::Migration[5.2]
  def change
    rename_column :relationships, :followed_image_id, :followed_id


  end
end
