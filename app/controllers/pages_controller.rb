class PagesController < ApplicationController # :nodoc:
  def about
    @page = Page.find_by_title('About')
  end

  def contact
    @page = Page.find_by_title('Contact')
  end
end
