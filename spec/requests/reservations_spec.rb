require 'rails_helper'

RSpec.describe 'Reservations', type: :request do
  before(:each) do # rubocop:disable Metrics/BlockLength
    @user = User.create!(
      name: 'John Foreman',
      email: 'john@mail.com',
      password: '12345678',
      password_confirmation: '12345678'
    )
    @ship = Ship.create!(
      name: 'Titanic',
      capacity: 1000,
      user_id: @user.id
    )
    @reservation = Reservation.create!(
      ship_id: ship.id,
      user_id: user.id,
      date_start: '01-09-2022',
      date_end: '01-10-2022',
      total: 999,
      duration: 3,
      deposit: 1000,
      insurance: true
    )
    sign_in @user

    @reservation2 = Reservation.create!(
      ship_id: ship.id,
      user_id: user.id,
      date_start: '02-08-2022',
      date_end: '04-9-2022',
      total: 500,
      duration: 2,
      deposit: 750,
      insurance: true
    )

    @reservation3 = Reservation.create!(
      ship_id: ship.id,
      user_id: user.id,
      date_start: '15-04-2022',
      date_end: '01-5-2022',
      total: 750,
      duration: 3,
      deposit: 750,
      insurance: true
    )
  end
end
