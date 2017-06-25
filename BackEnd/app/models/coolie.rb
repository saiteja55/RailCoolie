class Coolie < ApplicationRecord

  has_many :trips


  validates :phone,
            :uniqueness =>true


  scope :isCoolieAvailable, -> {where("coolies.isAssigned=0")}
  scope :availableCoolies, -> {where("coolies.isAssigned=0").order("coolies.lasttripEndStamp DESC")}

end
