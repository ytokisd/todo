FactoryBot.define do
  factory :task do
	name "first_task"
	description "test_task"
	project
	status
  end
end