FactoryBot.define do
    factory :room do
      name              {Faker::Japanese::Name}
      association          :users
    end
  end