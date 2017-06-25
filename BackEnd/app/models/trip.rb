class Trip < ApplicationRecord

  belongs_to :user
  belongs_to :coolie

  scope :getTrips, -> (id) { where(:user_id => id ,:tripStatus=>"DONE").order('trips.tripEndDate DESC') }

end
