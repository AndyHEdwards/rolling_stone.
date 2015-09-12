FactoryGirl.define do
  factory :user do
    name "Chris"
    email "chris@gmail.com"
    password "password"
    password_confirmation "password"
  end
end
