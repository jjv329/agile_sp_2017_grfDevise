class CreateEventLists < ActiveRecord::Migration
  def change
    create_table :event_lists do |t|
      t.date :eventDate
      t.time :eventTime
      t.text :eventName
      t.text :eventDescription
      t.text :streetAddress
      t.text :City
      t.text :State
      t.text :Zip
      t.integer :nbrOfRiders
      t.text :vehicleType
      t.text :PUstreetAddress
      t.text :PUCity
      t.text :PUState
      t.text :PUZip
      t.boolean :smokingAllowed
      t.text :createdBy
      t.boolean :eventDriver

      t.timestamps
    end
  end
end
