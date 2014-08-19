class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.string :letter

      t.timestamps
    end
  end
end
