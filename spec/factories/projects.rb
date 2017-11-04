FactoryBot.define do
  factory :project do
    name { FFaker::Name.name }
    max_capacity { (rand * 100).to_i }
    description { FFaker::Lorem.paragraph }
    start_date { "2011-01-01" }
    end_date { "2012-12-12" }
    profile { FFaker::Lorem.paragraph }
    location { FactoryBot.build :location }
  end
end
