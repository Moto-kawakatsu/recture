FactoryBot.define do
    factory :user do
      name              {Faker::Japanese::Name.last_name}
      email                 {Faker::Internet.free_email}
      password              {"aaa1111"}
      password_confirmation { password }
      genre                 {"生徒"}
      grade                 {5}
      class_number          {5}
      student_number        {5}
    end
  end