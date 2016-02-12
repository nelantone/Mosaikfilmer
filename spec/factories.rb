FactoryGirl.define do
  factory :user do |u|
    u.sequence(:email) {|n| "test#{n}@example.com"}
    u.password  "1n_test_we_trus7"

    factory :user_with_movies do
      after(:create) do |user, evaluator|
        create_list(:movie, 5, user: user)
      end
    end
  end

  factory :movie do
    name "Pride and Prejudice and Zombies"
    category "Action"
    country "United Kingdom"
    year 2016
    score 3.5
    opinion "Is good! The best part is the Movie name!"
    actors "Bella Heathcote"
  end
end