class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.decimal :price
      t.integer :quantity
      t.references :order, foreign_key: true
      t.references :tour, foreign_key: true

      t.timestamps
    end
  end
end
