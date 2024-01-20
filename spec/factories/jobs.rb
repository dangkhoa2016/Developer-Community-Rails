FactoryBot.define do
  factory :job do
    title { Faker::Job.title }
    description { Faker::Lorem.paragraph }
    employee_type { ['Full-Time', 'Part-Time', 'Contract'].sample }
    location { Faker::Address.city }
    salary { Faker::Number.number(digits: 6).to_s }
    qualification { Faker::Lorem.sentence }
    status { 'Public' }
    association :job_category
    association :user
    association :page
    user
    page
  end
end
