class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.decimal :price, precision: 10, scale: 2
      t.integer :status

      t.timestamps
    end
  end
end
