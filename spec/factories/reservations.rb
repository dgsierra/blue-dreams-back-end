FactoryBot.define do
  factory :reservation do
    user_id { 1 }
    ship_id { 1 }
    date_start { '2023-01-01' }
    date_end { '2023-01-02' }
    total { 1000 }
    duration { 1 }
    deposit { 1000 }
    insurance { false }
  end
end
