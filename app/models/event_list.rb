class EventList < ActiveRecord::Base
  validates_presence_of :eventName, :eventDescription, :streetAddress, :City, :State, :Zip, :nbrOfRiders, :vehicleType, :PUstreetAddress, :PUCity, :PUState, :PUZip, :createdBy

  def self.find_all_by_query(query)
  query = query.downcase
  query = "%#{query}%"
  EventList.where(['lower(eventName) like ?
  OR lower(eventDescription) like ?
  OR lower(City) like ?',
  query, query, query])
  end

end