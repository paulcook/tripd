class TripsController < ApplicationController
  
  def index
    
  end

  def new
    @trip = Trip.new
    @trip.legs.build
  end

  def create
  end

  def edit
  end

  def update
  end
end
