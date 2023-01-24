require 'rails_helper'

RSpec.describe 'Ships', type: :request do
  describe 'GET /ships' do
    it 'works! (now write some real specs)' do
      get ships_index_path
      expect(response).to have_http_status(200)
    end
  end
end
