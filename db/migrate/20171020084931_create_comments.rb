class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.belongs_to :post, index: true

      t.datetime :published_at
      t.timestamps
    end
  end
end
