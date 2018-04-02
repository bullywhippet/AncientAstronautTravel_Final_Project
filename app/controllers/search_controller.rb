class SearchController < ApplicationController
  def index
    @query = params[:q]
    if params[:category_id].blank?
      @found_items = Tour.where('name LIKE ? or description LIKE ?',
                                "%#{@query}%", "%#{@query}%")
    else
      category = Category.find(params[:category_id])
      @found_items = category.tours.where('name LIKE ? or description LIKE ?',
                                          "%#{@query}%", "%#{@query}%")
    end
  end
end
