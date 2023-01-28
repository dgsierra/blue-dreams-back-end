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

  describe 'associations' do
    it 'has many reservations' do
      ship = Ship.reflect_on_association(:reservations)
      expect(ship.macro).to eq(:has_many)
    end
  end

  describe 'validations' do
    it 'is invalid with a negative capacity' do
      ship = Ship.new(capacity: -1)
      ship.save
      expect(ship.valid?).to eq(false)
    end
  end
end
