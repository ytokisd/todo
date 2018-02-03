require 'rails_helper'

RSpec.describe Task, type: :model do
context "create task" do
  it "success" do
	task = create :task
	expect(task.name).to eq "first_task"
	expect(task.description).to eq "test_task"
	end
  end
context "Assotiations"do
  it {is_expected.to belong_to(:project) }
  it {is_expected.to belong_to(:status) }
  end
end