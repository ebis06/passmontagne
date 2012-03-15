FactoryGirl.define do
  factory :user do
    name     "Eric Biscondi"
    email    "eric.biscondi@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end