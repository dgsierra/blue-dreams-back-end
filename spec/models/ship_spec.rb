require 'rails_helper'

RSpec.describe 'Ships', type: :model do
  describe 'validations' do
    it 'is invalid without a name' do
      ship = Ship.new(name: nil)
      ship.valid?
      expect(ship.errors).to have_key(:name)
    end

    it 'is invalid without a capacity' do
      ship = Ship.new(capacity: nil)
      ship.valid?
      expect(ship.errors).to have_key(:capacity)
    end
  end
end
