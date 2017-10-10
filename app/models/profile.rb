class Profile < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user_id, :first_name, :last_name, :age, :street_address, :city, :state, :zip
end
