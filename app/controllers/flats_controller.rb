class FlatsController < ApplicationController
  before_action :set_flat, only: %i[show edit update destroy]
  # before_action :authenticate_user - not yet

  def index
    @flats = Flat.all
  end

  def show; end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user_id = 1
    if @flat.save
      redirect_to @flat
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # TO DO
  end

  def update
    @flat = Flat
    # TO DO
  end

  def destroy
    # TO DO
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_day, :image_url, :photo)
  end

end
