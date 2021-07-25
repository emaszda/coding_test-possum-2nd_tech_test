class AddIsDeletedDefaultValueFalseToComments < ActiveRecord::Migration[6.1]
  def change
    change_column_default :comments, :is_deleted, from: true, to: false
  end
end
