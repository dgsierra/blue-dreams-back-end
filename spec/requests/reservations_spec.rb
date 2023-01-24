require 'rails_helper'

RSpec.describe 'Reservations', type: :request do
  before(:each) do
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
      ship_id: @ship.id,
      user_id: @user.id,
      date: '2020-01-01'
    )
    sign_in @user

    @reservation2 = Reservation.create!(
      ship_id: @ship.id,
      user_id: @user.id,
      date: '2020-01-02'
    )
  end
end
