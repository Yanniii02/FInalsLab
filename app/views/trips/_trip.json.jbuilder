json.extract! trip, :id, :schedule, :origin, :destination, :number_of_passengers, :unit_fare, :created_at, :updated_at
json.url trip_url(trip, format: :json)
