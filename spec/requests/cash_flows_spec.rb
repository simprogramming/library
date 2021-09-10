require 'rails_helper'

RSpec.describe "CashFlows", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/cash_flows/create"
      expect(response).to have_http_status(:success)
    end
  end

end
