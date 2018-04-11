class ToursController < ApplicationController # :nodoc:
  before_action :initialize_session
  before_action :load_tours_in_cart

  def index
    @tours = Tour.order(:name).page(params[:page]).per(3)
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

  def order
    load_cart
    @security_code = params[@security_code]
    @province = if params[:province_id].blank?
                  Province.find(1)
                else
                  Province.find(params[:province_id])
                end
  end

  def add_to_cart
    id = params[:id].to_i
    @qty = params[:quantity].to_i
    session[:cart] << id
    flash[:notice] = "#{@qty} Item(s) added to cart"
    redirect_to tours_path
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    flash[:notice] = 'Item removed from cart'
    redirect_to cart_path
  end

  def clear_cart
    session[:cart] = nil
    redirect_to cart_path
  end

  private

  def initialize_session
    session[:cart] ||= []
  end

  def load_tours_in_cart
    @tours_in_cart = Tour.find(session[:cart])
  end

  def load_cart
    @first_name = params[:first_name]
    @last_name = params[:Last_name]
    @city = params[:city]
    @address = params[:address]
  end
end
