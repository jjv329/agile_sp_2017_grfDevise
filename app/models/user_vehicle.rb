class UserVehicle < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :username, :vehicleType, :vehicleColor, :maxRider
end
