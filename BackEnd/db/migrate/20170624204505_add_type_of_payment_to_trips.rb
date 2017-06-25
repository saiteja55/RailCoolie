class AddTypeOfPaymentToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :paymentType, :string
  end
end
