class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string "train_no"
      t.string "berth"
      t.string "coach"
      t.boolean "tripType"
      t.integer "NumBags"
      t.boolean "BookingType"
      t.string "tripStatus"
      t.integer "tripAmount"
      t.datetime "tripEndDate"
      t.float "rating"
      t.timestamps
    end
  end
end
