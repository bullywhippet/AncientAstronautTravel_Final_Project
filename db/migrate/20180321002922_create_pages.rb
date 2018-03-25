class CreatePages < ActiveRecord::Migration[5.1] # :nodoc:
  def change
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
