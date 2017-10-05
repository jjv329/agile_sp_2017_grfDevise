json.extract! event_list, :id, :eventDate, :eventTime, :eventName, :eventDescription, :streetAddress, :City, :State, :Zip, :nbrOfRiders, :vehicleType, :PUstreetAddress, :PUCity, :PUState, :PUZip, :smokingAllowed, :createdBy, :eventDriver, :created_at, :updated_at
json.url event_list_url(event_list, format: :json)
