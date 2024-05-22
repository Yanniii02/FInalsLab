class BusTripsController < ApplicationController
  before_action :set_bus_trip, only: %i[ show edit update destroy ]

  # GET /bus_trips or /bus_trips.json
  def index
    @bus_trips = BusTrip.all
  end

  # GET /bus_trips/1 or /bus_trips/1.json
  def show
  end

  # GET /bus_trips/new
  def new
    @bus_trip = BusTrip.new
  end

  # GET /bus_trips/1/edit
  def edit
  end

  # POST /bus_trips or /bus_trips.json
  def create
    @bus_trip = BusTrip.new(bus_trip_params)

    respond_to do |format|
      if @bus_trip.save
        format.html { redirect_to bus_trip_url(@bus_trip), notice: "Bus trip was successfully created." }
        format.json { render :show, status: :created, location: @bus_trip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bus_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bus_trips/1 or /bus_trips/1.json
  def update
    respond_to do |format|
      if @bus_trip.update(bus_trip_params)
        format.html { redirect_to bus_trip_url(@bus_trip), notice: "Bus trip was successfully updated." }
        format.json { render :show, status: :ok, location: @bus_trip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bus_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bus_trips/1 or /bus_trips/1.json
  def destroy
    @bus_trip.destroy!

    respond_to do |format|
      format.html { redirect_to bus_trips_url, notice: "Bus trip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bus_trip
      @bus_trip = BusTrip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bus_trip_params
      params.require(:bus_trip).permit(:schedule, :origin, :destination, :number_of_passengers, :unit_fare, :total_fare, :bus_id)
    end
end
