FactoryGirl.define do
  factory :user do |u|
    u.sequence(:email) {|n| "test#{n}@example.com"}
    u.password  "1n_test_we_trus7"
    # admin false
  end

  factory :movie do
    name "MyString"
    category "Action"
    country "Mexico"
    year 2005
    score 1.5
    opinion "MyString"
    actors "MyString"
  end
end