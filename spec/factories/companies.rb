FactoryGirl.define do
  factory :company do
    sequence(:name) { Faker::Lorem.sentence }
    sequence(:active) { [true, false].sample }
  end
end
