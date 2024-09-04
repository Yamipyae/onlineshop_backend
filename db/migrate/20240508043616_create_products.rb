class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :pname
      t.string :imgUrl
      t.float :price
      t.integer :stock
      t.timestamps
    end
  end
end
