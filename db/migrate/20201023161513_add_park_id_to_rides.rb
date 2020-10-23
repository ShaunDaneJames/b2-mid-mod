class AddParkIdToRides < ActiveRecord::Migration[5.2]
  def change
    add_column :rides, :park_id, :integer
    add_index :rides, :park_id
  end
end
