class CreateNewUsers < ActiveRecord::Migration
  def change
    create_table :new_users do |t|
      t.string :username
      t.string :email
      t.boolean :password
      t.text :state
      t.text :city
      t.integer :zip
      t.text :vehicleType

      t.timestamps
    end
  end
end
