class AddParkIdToMechanics < ActiveRecord::Migration[5.2]
  def change
    add_column :rides, :mechanic_id, :integer
    add_index :rides, :mechanic_id
  end
end
