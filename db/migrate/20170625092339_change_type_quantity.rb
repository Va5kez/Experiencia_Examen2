class ChangeTypeQuantity < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      change_table :orders do |t|
        dir.up {t.change :quantity, :decimal}
        dir.down {t.change :quantity, :string}
      end
    end
  end
end
