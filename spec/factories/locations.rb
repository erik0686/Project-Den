FactoryBot.define do
  factory :location do
    city { FFaker::Address.country}
    state { FFaker::Address.country}
  end
end
