class RenameTitleIdColumnToBookComments < ActiveRecord::Migration[5.2]
  def change
    rename_column :book_comments, :title_id, :book_id
  end
end
