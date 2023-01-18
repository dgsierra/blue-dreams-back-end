require 'rails_helper'

RSpec.describe "Privates", type: :request do
  describe "GET /test" do
    it "returns http success" do
      get "/private/test"
      expect(response).to have_http_status(:success)
    end
  end

end
