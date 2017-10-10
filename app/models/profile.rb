class Profile < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :username, :first_name, :last_name, :age, :street_address, :city, :state, :zip
end
