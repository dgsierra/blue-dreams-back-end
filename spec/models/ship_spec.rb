require 'rails_helper'

RSpec.describe 'Ships', type: :model do
  describe 'validations' do
    it 'is invalid without a name' do
      ship = Ship.new(name: nil)
      ship.valid?
      expect(ship.errors).to have_key(:name)
    end

    it 'is invalid without a description' do
      ship = Ship.new(description: nil)
      ship.valid?
      expect(ship.errors).to have_key(:description)
    end

    it 'is invalid without a price' do
      ship = Ship.new(price: nil)
      ship.valid?
      expect(ship.errors).to have_key(:price)
    end

    it 'is invalid without a location' do
      ship = Ship.new(location: nil)
      ship.valid?
      expect(ship.errors).to have_key(:location)
    end

    it 'is invalid without a capacity' do
      ship = Ship.new(capacity: nil)
      ship.valid?
      expect(ship.errors).to have_key(:capacity)
    end

    it 'is invalid without a user' do
      ship = Ship.new(user: nil)
      ship.valid?
      expect(ship.errors).to have_key(:user)
    end
  end
end
