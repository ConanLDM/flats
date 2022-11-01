class FlatsController < ApplicationController

  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show

  end

  def new
    @flat = Flat.new
  end


  def create
    @flat = Flat.new(flat_params)
      if @flat.save
        redirect_to @flat
      else
        render "new"
      end
  end

  def edit
  end

  def update
    @flat = Flat
  end

  def destroy

  end

  private

  def set_flat
    @flat = Flat.find(params[:id])

  end

  def flat_params

  end

end
