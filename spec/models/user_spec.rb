require 'rails_helper'

RSpec.describe 'User', type: :model do
  it 'is valid with a name, email, password, password confirmation' do
    user = User.new(
      name: 'John',
      email: 'john@mail.com',
      password: '12345678',
      password_confirmation: '12345678'
    )
    expect(user).to be_valid
  end
end
