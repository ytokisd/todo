FactoryBot.define do
  factory :user do
	email Faker::Internet.email
	password "testpass"
	user_name "testname"
  end
end