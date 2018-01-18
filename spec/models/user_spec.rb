require 'rails_helper'

RSpec.describe User, type: :model do
context "create user" do
  it "success" do
	user = create :user
	expect(user.user_name).to eq "testname"
	end
  end
context "Assotiations"do
  it {is_expected.to have_many(:project) }
  end
end
