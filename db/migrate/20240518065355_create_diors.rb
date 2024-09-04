class CreateDiors < ActiveRecord::Migration[7.1]
  def change
    create_table :diors do |t|
      t.string :name
      t.float :price
      t.integer :stock
      t.string :image

      t.timestamps
    end
  end
end
