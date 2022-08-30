require 'rails_helper'

RSpec.describe "Regs", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/regs/index"
      expect(response).to have_http_status(:success)
    end
  end

end
