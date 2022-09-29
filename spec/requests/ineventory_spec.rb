require 'rails_helper'

RSpec.describe "Ineventories", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/ineventory/index"
      expect(response).to have_http_status(:success)
    end
  end

end
