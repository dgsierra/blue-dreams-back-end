FactoryBot.define do
  factory :ship do
    name { 'Titanic' }
    capacity { 1000 }
    image { 'https://i.imgur.com/1bU8W6U.jpg' }
    price { 1000 }
    availability { true }
    sale { false }
    price_sale { 0 }
  end
end
