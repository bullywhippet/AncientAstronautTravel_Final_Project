class CategoriesController < ApplicationController # :nodoc:
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end
end
