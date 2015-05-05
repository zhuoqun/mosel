require 'rails_helper'

RSpec.describe UserController, type: :controller do

  describe "GET #signin" do
    it "returns http success" do
      get :signin
      expect(response).to have_http_status(:success)
    end
  end

end
