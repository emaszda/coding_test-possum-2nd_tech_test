class CreateArticleHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :article_histories do |t|
      t.references, :article
      t.string, :title
      t.text, :body
      t.string :author

      t.timestamps
    end
  end
end
