class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string  :title,       null: false
      t.string  :articul,     null: false
      t.decimal :price,       null: false
      t.decimal :sale
      t.integer :updated_by
      t.string  :deleted_at

      t.timestamps
    end
  end
end
