class CreateCreaters < ActiveRecord::Migration
  def change
    create_table :creaters do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
