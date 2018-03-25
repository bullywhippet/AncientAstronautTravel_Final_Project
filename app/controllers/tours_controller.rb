class ToursController < ApplicationController # :nodoc:
  def index
    @tours = Tour.page(params[:page]).per(3)
  end

  def show
    @tour = Tour.find(params[:id])
  end

  def sale
    @tours = Tour.where(on_sale: true)
  end

  def new
    @tours = Tour.where(new: true)
  end
end
