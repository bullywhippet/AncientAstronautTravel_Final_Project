class SearchController < ApplicationController
  def index
    @query = "%#{params[:q]}%"
    @found_items = Tour.where('name LIKE ? or description LIKE ?', @query, @query)
  end
end
