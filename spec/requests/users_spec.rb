require 'rails_helper'

RSpec.describe 'Users', type: :request do
  before(:each) do
    @users = User.create!(
      name: 'John Foreman',
      email: 'john@mail.com',
      password: '12345678',
      password_confirmation: '12345678'
    )
    sign_in @users
  end
end
