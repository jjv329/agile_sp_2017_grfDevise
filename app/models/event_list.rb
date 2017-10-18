class EventList < ActiveRecord::Base
  belongs_to :user
	has_one :user_vehicle
  has_many :ride_requests
  validates_presence_of :eventName, :eventDescription, :streetAddress, :City, :State, :Zip, :user_id

  def self.find_all_by_query(query)
  query = query.downcase
  query = "%#{query}%"
  EventList.where(['lower(eventName) like ?
  OR lower(eventDescription) like ?
  OR lower(City) like ?',
  query, query, query])
  end

end