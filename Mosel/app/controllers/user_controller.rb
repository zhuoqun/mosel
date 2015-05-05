class UserController < ApplicationController

  def signin
    @page_id = "signin"

    render layout: "home"
  end

  def signup
    @page_id = "signup"

    render layout: "home"
  end
end
