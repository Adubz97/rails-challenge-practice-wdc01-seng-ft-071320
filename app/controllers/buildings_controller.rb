class BuildingsController < ApplicationController

  before_action :find_building, only: [:show, :edit, :update]

  def index
    @buildings = Building.all
  end

  def show
    render :show
  end

  def edit
    render :edit
  end

  def update
    @building.update(building_params)
    redirect_to building_path(@building)
  end

  private

  def find_building
    @building = Building.find(params[:id])
  end

  def building_params
    params.require(:building).permit(:name, :country, :address, :rent_per_floor, :number_of_floors)
  end

end