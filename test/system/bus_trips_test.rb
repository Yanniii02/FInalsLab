require "application_system_test_case"

class BusTripsTest < ApplicationSystemTestCase
  setup do
    @bus_trip = bus_trips(:one)
  end

  test "visiting the index" do
    visit bus_trips_url
    assert_selector "h1", text: "Bus trips"
  end

  test "should create bus trip" do
    visit bus_trips_url
    click_on "New bus trip"

    fill_in "Bus", with: @bus_trip.bus_id
    fill_in "Destination", with: @bus_trip.destination
    fill_in "Number of passengers", with: @bus_trip.number_of_passengers
    fill_in "Origin", with: @bus_trip.origin
    fill_in "Schedule", with: @bus_trip.schedule
    fill_in "Total fare", with: @bus_trip.total_fare
    fill_in "Unit fare", with: @bus_trip.unit_fare
    click_on "Create Bus trip"

    assert_text "Bus trip was successfully created"
    click_on "Back"
  end

  test "should update Bus trip" do
    visit bus_trip_url(@bus_trip)
    click_on "Edit this bus trip", match: :first

    fill_in "Bus", with: @bus_trip.bus_id
    fill_in "Destination", with: @bus_trip.destination
    fill_in "Number of passengers", with: @bus_trip.number_of_passengers
    fill_in "Origin", with: @bus_trip.origin
    fill_in "Schedule", with: @bus_trip.schedule
    fill_in "Total fare", with: @bus_trip.total_fare
    fill_in "Unit fare", with: @bus_trip.unit_fare
    click_on "Update Bus trip"

    assert_text "Bus trip was successfully updated"
    click_on "Back"
  end

  test "should destroy Bus trip" do
    visit bus_trip_url(@bus_trip)
    click_on "Destroy this bus trip", match: :first

    assert_text "Bus trip was successfully destroyed"
  end
end
