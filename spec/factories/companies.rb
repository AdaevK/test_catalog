FactoryGirl.define do
  factory :company do
    sequence(:name) { Faker::Lorem.sentence }
    sequence(:active) { [true, false].sample }

    factory :company_with_products do
      transient do
        product_count 3
      end

      after(:create) do |company, evaluator|
        create_list(:product, evaluator.product_count, company: company)
      end
    end
  end
end
