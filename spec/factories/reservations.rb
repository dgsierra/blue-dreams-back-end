FactoryBot.define do
  factory :reservation do
    date_start { '2023-01-16' }
    date_end { '2023-01-16' }
    total { '' }
    duration { '' }
    deposit { '' }
    insurance { false }
  end
end
