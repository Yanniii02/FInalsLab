json.extract! bus_trip, :id, :schedule, :origin, :destination, :number_of_passengers, :unit_fare, :total_fare, :bus_id, :created_at, :updated_at
json.url bus_trip_url(bus_trip, format: :json)
