class RideRequest < ActiveRecord::Base
	belongs_to :event_list
	belongs_to :user
end
