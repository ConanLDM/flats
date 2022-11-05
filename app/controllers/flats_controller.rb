class FlatsController < ApplicationController
  before_action :set_flat, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]
  before_action :correct_user, only: %i[edit update destory]
  respond_to :html

  def index
    @flats = Flat.all
  end

  def show
    @booking = Booking.new
    # geocode & mapbox: needs a guard clause!
    @markers =
      {
        lat: @flat.geocode.first,
        lng: @flat.geocode.last,
        info_window: render_to_string(partial: "info_window", locals: {flat: @flat})
      }
  end

  def new
    @flat = current_user.flats.build
  end

  def create
    @flat = current_user.flats.build(flat_params)
    @flat.user_id = 1
    if @flat.save
      redirect_to @flat, notice: 'Flat was succesfully created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # TO DO
  end

  def update
    if @flat.update(flat_params)
      redirect_to @flat, notice: 'Flat was sucesfully update.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_url
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_day, :image_url, :photo)
  end

  def correct_user
    @flat = current_user.flats.find_by(id: params[:id])
    redirect_to flats_path, notice: "Not authorized to edit this flat" if @flat.nil?
  end
end
