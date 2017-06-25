class CreateCoolies < ActiveRecord::Migration[5.0]
  def change
    create_table :coolies do |t|
      t.string "name"
      t.string "phone"
      t.datetime "lasttripEndStamp"
      t.boolean "isAssigned", :default=>0
      t.integer "NumTrips", :default=>0
      t.float "AvgRating", :default=>0
      t.timestamps
    end
  end
end
