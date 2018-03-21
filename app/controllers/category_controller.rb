class CategoryController < ApplicationController
  def index
    @categories = Category.page(params[:page]).per(10)
  end

  def show
    @category = Category.find(params[:id])
  end
end
