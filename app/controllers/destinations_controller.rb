class DestinationsController < ApplicationController
  before_action :find_destination, only:[:show]

  def show
  end

  def index
    @destinations = Destination.all.sort_by(&:created_at)
  end

  def new
    @destination = Destination.new
  end

  def create
  
  end

  private
  def find_destination
    @destination = Destination.find(params[:id])
  end

  def destination_params(*args)
    params.require(:destination).permit(*args)
  end
end
