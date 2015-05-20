class ReadersController < ApplicationController

  before_filter :require_login
  skip_before_filter :require_login, :only => [:index, :hot, :show]

  def index
  end
end
