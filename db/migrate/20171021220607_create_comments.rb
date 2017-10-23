class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :title, null: false
      t.belongs_to :post, index: true
      t.belongs_to :user, index: true

      t.datetime :published_at
      t.timestamps
    end
  end
end
