class ToursController < ApplicationController # :nodoc:
  def index
    @tours = Tour.page(params[:page]).per(3)
  end

  def show
    @tour = Tour.find(params[:id])
  end
end
