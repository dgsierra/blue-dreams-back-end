FactoryBot.define do
  factory :user do
    name { 'John' }
    email { 'john@mail.com' }
    password { '12345678' }
    password_confirmation { '12345678' }
  end
end
