class CreateProvinces < ActiveRecord::Migration[5.1]
  def change
    create_table :provinces do |t|
      t.string :name
      t.integer :pst_rate
      t.integer :gst_rate
      t.integer :hst_rate

      t.timestamps
    end
  end
end
