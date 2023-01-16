FactoryBot.define do
  factory :user do
    name { "MyString" }
    email { "MyString" }
    admin { false }
    pw { "MyString" }
    license { false }
  end
end
