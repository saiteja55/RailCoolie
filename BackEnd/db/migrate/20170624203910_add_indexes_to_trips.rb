class AddIndexesToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :coolie_id, :integer
    add_column :trips, :user_id, :integer
  end
end
