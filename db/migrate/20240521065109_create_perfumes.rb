class CreatePerfumes < ActiveRecord::Migration[7.1]
  def change
    create_table :perfumes do |t|
      t.string :name
      t.float :price
      t.integer :stock
      t.string :image

      t.timestamps
    end
  end
end
