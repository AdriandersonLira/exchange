require 'rails_helper'

RSpec.describe "ControlUsers", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/control_users/index"
      expect(response).to have_http_status(:success)
    end
  end

end
