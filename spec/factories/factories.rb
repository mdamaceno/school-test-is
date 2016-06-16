FactoryGirl.define do
  factory :student do
    name Faker::Name.name
    register_number Faker::Number.number(10)
    status 1
  end
end
