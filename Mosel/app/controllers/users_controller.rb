class UsersController < ApplicationController

  def signin
    @page_id = "signin"

    render layout: "home"
  end

  def signup
    @page_id = "signup"

    @user = User.new

    render layout: "home"
  end

  def create
  end
end
