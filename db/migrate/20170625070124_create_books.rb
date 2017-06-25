class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.text :title
      t.text :description
      t.decimal :price
      t.text :category
      t.decimal :quantities
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
