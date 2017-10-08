class Profile < ActiveRecord::Base
  validates_presence_of :username, :first_name, :last_name, :age, :street_address, :city, :state, :zip
end
