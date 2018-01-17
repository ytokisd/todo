require 'rails_helper'

RSpec.describe Project, type: :model do
context "create project" do
	it "success" do
		project = create :project
		expect(project.name).to eq "first_project"
		expect(project.description).to eq "testproj"
	end
  end
end
