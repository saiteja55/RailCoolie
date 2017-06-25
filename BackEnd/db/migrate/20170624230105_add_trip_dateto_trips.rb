class AddTripDatetoTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :tripDate, :date
  end
end
