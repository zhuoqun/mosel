class UsersController < ApplicationController

  def signin
    @page_id = "signin"

    render layout: "home"
  end

  def signup
    @page_id = "signup"

    @identity = env['omniauth.identity']

    render layout: "home"
  end

  def create
  end

  def profile
  end

  def settings
  end
end
