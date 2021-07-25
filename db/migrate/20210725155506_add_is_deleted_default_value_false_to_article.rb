class AddIsDeletedDefaultValueFalseToArticle < ActiveRecord::Migration[6.1]
  def change
    change_column_default :articles, :is_deleted, from: true, to: false
  end
end
