class AddIsDeletedAndDeletedAtToArticleHistories < ActiveRecord::Migration[6.1]
  def change
    add_column :article_histories, :is_deleted, :boolean
    add_column :article_histories, :deleted_at, :timestamps
  end
end
