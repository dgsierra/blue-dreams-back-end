require 'rails_helper'

RSpec.describe 'Reservations', type: :model do
  describe 'validations' do
    it 'is invalid without a user' do
      reservation = Reservation.new(user: nil)
      reservation.valid?
      expect(reservation.errors).to have_key(:user)
    end
  end
end
