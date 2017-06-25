class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.text :name
      t.text :email
      t.text :password_digest

      t.timestamps
    end
  end
end
