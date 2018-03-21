class ToursController < ApplicationController
  def index
    @tours = Tour.order(:name).per(10)
  end

  def show
    @tour = Tour.find(params[:id])
  end
end
