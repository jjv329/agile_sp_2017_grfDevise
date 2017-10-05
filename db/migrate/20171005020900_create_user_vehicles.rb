class CreateUserVehicles < ActiveRecord::Migration
  def change
    create_table :user_vehicles do |t|
      t.text :username
      t.text :vehicleType
      t.text :vehicleColor
      t.integer :maxRider

      t.timestamps null: false
    end
  end
end
