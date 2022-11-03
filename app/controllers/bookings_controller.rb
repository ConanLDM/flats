class BookingsController < ApplicationController
  before_action :set_flat, only: %i[new create]
  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.restaurant = @flat
    @booking.save
    # redirect_to WHERE
  end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
