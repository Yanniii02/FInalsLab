require "test_helper"

class BusTripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bus_trip = bus_trips(:one)
  end

  test "should get index" do
    get bus_trips_url
    assert_response :success
  end

  test "should get new" do
    get new_bus_trip_url
    assert_response :success
  end

  test "should create bus_trip" do
    assert_difference("BusTrip.count") do
      post bus_trips_url, params: { bus_trip: { bus_id: @bus_trip.bus_id, destination: @bus_trip.destination, number_of_passengers: @bus_trip.number_of_passengers, origin: @bus_trip.origin, schedule: @bus_trip.schedule, total_fare: @bus_trip.total_fare, unit_fare: @bus_trip.unit_fare } }
    end

    assert_redirected_to bus_trip_url(BusTrip.last)
  end

  test "should show bus_trip" do
    get bus_trip_url(@bus_trip)
    assert_response :success
  end

  test "should get edit" do
    get edit_bus_trip_url(@bus_trip)
    assert_response :success
  end

  test "should update bus_trip" do
    patch bus_trip_url(@bus_trip), params: { bus_trip: { bus_id: @bus_trip.bus_id, destination: @bus_trip.destination, number_of_passengers: @bus_trip.number_of_passengers, origin: @bus_trip.origin, schedule: @bus_trip.schedule, total_fare: @bus_trip.total_fare, unit_fare: @bus_trip.unit_fare } }
    assert_redirected_to bus_trip_url(@bus_trip)
  end

  test "should destroy bus_trip" do
    assert_difference("BusTrip.count", -1) do
      delete bus_trip_url(@bus_trip)
    end

    assert_redirected_to bus_trips_url
  end
end
