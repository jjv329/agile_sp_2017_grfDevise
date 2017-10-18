class UserVehicle < ActiveRecord::Base
  belongs_to :user
  belongs_to :event_list
  validates_presence_of :user_id, :vehicleType, :vehicleColor, :maxRider
end
