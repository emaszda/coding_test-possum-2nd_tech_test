class AddIsDeletedAndDeletedAtToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :is_deleted, :boolean
    add_column :comments, :deleted_at, :timestamp
  end
end
