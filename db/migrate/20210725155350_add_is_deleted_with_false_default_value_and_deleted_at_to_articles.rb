class AddIsDeletedWithFalseDefaultValueAndDeletedAtToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :is_deleted, :boolean
    add_column :articles, :deleted_at, :timestamp
  end
end
