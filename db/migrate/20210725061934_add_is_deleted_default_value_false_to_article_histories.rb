class AddIsDeletedDefaultValueFalseToArticleHistories < ActiveRecord::Migration[6.1]
  def change
    change_column_default :article_histories, :is_deleted, from: true, to: false
  end
end
