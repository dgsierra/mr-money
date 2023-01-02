require 'rails_helper'

RSpec.describe "SplashPages", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/splash_page/index"
      expect(response).to have_http_status(:success)
    end
  end

end
