FactoryBot.define do
  factory :event do
    event_type { Faker::Lorem.word }
    event_name { Faker::Lorem.sentence }
    start_date { Faker::Date.forward(days: 10) }
    end_date { Faker::Date.forward(days: 20) }
    start_time { Faker::Time.forward(days: 5, period: :morning).strftime("%H:%M") }
    end_time { Faker::Time.forward(days: 5, period: :afternoon).strftime("%H:%M") }
    description { Faker::Lorem.paragraph }
    association :user
  end
end
