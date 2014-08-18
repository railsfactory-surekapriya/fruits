class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
      t.string :name
      t.string :colour
      t.integer :price
      t.references :fruit, index: true

      t.timestamps
    end
  end
end
