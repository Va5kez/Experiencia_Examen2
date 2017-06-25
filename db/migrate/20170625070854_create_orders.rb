class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.text :client
      t.decimal :total
      t.string :quantity
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
