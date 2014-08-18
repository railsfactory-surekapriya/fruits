class AddDobToMembers < ActiveRecord::Migration
  def change
    add_column :members, :DOB, :date
  end
end
