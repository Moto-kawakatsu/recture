FactoryBot.define do
    factory :room do
      name              {Faker::Japanese::Name}
      association          :user
    end
  end