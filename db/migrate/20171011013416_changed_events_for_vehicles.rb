class ChangedEventsForVehicles < ActiveRecord::Migration
  def change
		change_column :event_lists, :vehicleType, :integer
		rename_column :event_lists, :vehicleType, :vehicle_id
  end
end
