require 'rails_helper'

RSpec.describe ShipsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/ships').to route_to('ships#index')
    end

    it 'routes to #show' do
      expect(get: '/ships/1').to route_to('ships#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/ships').to route_to('ships#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/ships/1').to route_to('ships#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/ships/1').to route_to('ships#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/ships/1').to route_to('ships#destroy', id: '1')
    end
  end
end
