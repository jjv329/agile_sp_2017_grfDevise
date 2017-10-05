class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :username
      t.text :first_name
      t.text :last_name
      t.integer :age
      t.text :street_address
      t.text :city
      t.text :state
      t.text :zip
      t.boolean :driver
      t.boolean :rider
      t.boolean :drivernrider
      t.boolean :smoker
      t.boolean :non_smoker

      t.timestamps null: false
    end
  end
end
