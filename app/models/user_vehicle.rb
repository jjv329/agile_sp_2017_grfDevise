class UserVehicle < ActiveRecord::Base
  validates_presence_of :username, :vehicleType, :vehicleColor, :maxRider
end
