json.extract! profile, :id, :username, :first_name, :last_name, :age, :street_address, :city, :state, :zip, :driver, :rider, :drivernrider, :smoker, :non_smoker, :created_at, :updated_at
json.url profile_url(profile, format: :json)
