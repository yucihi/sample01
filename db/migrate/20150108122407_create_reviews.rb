class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :book, index: true
      t.text :body

      t.timestamps null: false
    end
    add_foreign_key :reviews, :books
  end
end
