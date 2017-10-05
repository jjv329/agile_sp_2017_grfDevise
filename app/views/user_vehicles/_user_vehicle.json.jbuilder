json.extract! user_vehicle, :id, :username, :vehicleType, :vehicleColor, :maxRider, :created_at, :updated_at
json.url user_vehicle_url(user_vehicle, format: :json)
