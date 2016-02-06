class OnlineBookingsController < ApplicationController
  before_action :set_online_booking, only: [:show, :edit, :update, :destroy]

  # GET /online_bookings
  # GET /online_bookings.json
  def index
    @online_bookings = OnlineBooking.all
  end

  # GET /online_bookings/1
  # GET /online_bookings/1.json
  def show
  end

  # GET /online_bookings/new
  def new
    @online_booking = OnlineBooking.new
  end

  # GET /online_bookings/1/edit
  def edit
  end

  # POST /online_bookings
  # POST /online_bookings.json
  def create
    @online_booking = OnlineBooking.new(online_booking_params)

    respond_to do |format|
      if @online_booking.save
        format.html { redirect_to @online_booking, notice: 'Online booking was successfully created.' }
        format.json { render :show, status: :created, location: @online_booking }
      else
        format.html { render :new }
        format.json { render json: @online_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /online_bookings/1
  # PATCH/PUT /online_bookings/1.json
  def update
    respond_to do |format|
      if @online_booking.update(online_booking_params)
        format.html { redirect_to @online_booking, notice: 'Online booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @online_booking }
      else
        format.html { render :edit }
        format.json { render json: @online_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /online_bookings/1
  # DELETE /online_bookings/1.json
  def destroy
    @online_booking.destroy
    respond_to do |format|
      format.html { redirect_to online_bookings_url, notice: 'Online booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_online_booking
      @online_booking = OnlineBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def online_booking_params
      params.require(:online_booking).permit(:movie_id, :booking_id)
    end
end
