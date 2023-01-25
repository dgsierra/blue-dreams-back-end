require 'rails_helper'

RSpec.describe 'Reservations', type: :model do
  describe 'validations' do
    let(:valid_attributes) do
      {
        date_start: '01/01/2023',
        date_end: '01/02/2023',
        user: @user,
        ship: @ship
      }
    end

    let(:invalid_attributes) do
      {
        date_start: '01/01/2023',
        date_end: '01/02/2023',
        user: nil,
        ship: nil
      }
    end

    before(:each) do
      Reservation.create! valid_attributes
      get reservations_url
    end
  end
end
