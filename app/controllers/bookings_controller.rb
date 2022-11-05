class BookingsController < ApplicationController
  before_action :set_flat, only: %i[new create]
  before_action :set_booking, only: %i[show] # add delete too

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = 1
    @booking.flat = @flat
    if @booking.save
      redirect_to booking_path(@booking)
      # raise
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def index
    # currently only one user
    @bookings = Booking.all
  end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
