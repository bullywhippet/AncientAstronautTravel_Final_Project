class PagesController < ApplicationController # :nodoc:
  def about
    @page = Page.find_by('About')
  end

  def contact
    @page = Page.find_by('Contact')
  end
end
