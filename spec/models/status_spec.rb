require 'rails_helper'

RSpec.describe Status, type: :model do
context "create status" do
	it "success" do
		status = create :status
		expect(status.name).to eq "Important"
	end
  end
end