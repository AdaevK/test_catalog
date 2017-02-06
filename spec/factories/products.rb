FactoryGirl.define do
  factory :product do
    sequence(:name) { Faker::Lorem.sentence }
    sequence(:description) { Faker::Lorem.paragraph(5) }
    sequence(:active) { [true, false].sample }

    association :company
  end
end
