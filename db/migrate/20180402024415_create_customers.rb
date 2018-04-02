class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :encrypted_password
      t.string :salt
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :postal_code
      t.references :province, foreign_key: true

      t.timestamps
    end
  end
end
