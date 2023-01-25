require 'rails_helper'

RSpec.describe 'Ships', type: :request do
  describe 'GET /ships' do
    it 'works! (now write some real specs)' do
      get ships_index_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'methods' do
    it 'returns the number of reservations' do
      user = User.create(
        name: 'John Foreman',
        email: 'john@mail.com',
        password: '12345678',
        password_confirmation: '12345678',
        license: true,
        admin: true
      )
      ship = Ship.create(
        name: 'Titanic',
        capacity: 1000,
        image: 'img',
        price: 1_000,
        availability: true,
        sale: true,
        price_sale: 500
      )
      reservation = Reservation.create(
        ship_id: ship.id,
        user_id: user.id,
        date_start: '01-09-2022',
        date_end: '01-10-2022',
        total: 999,
        duration: 3,
        deposit: 1000,
        insurance: true
      )
      expect(user.reservations.count).to eq(1)
    end
  end
end
