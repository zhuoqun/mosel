class HomeController < ApplicationController
  layout "home"

  def index
    @page_id = 'index'
  end

  def about
    @page_id = 'about'
  end

  def contact
    @page_id = 'contact'
  end

end
