class CreateTours < ActiveRecord::Migration[5.1]
  def change
    create_table :tours do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image
      t.boolean :on_sale
      t.boolean :new
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
