class Project < ActiveRecord::Base
  has_many :task
  belongs_to :user
  belongs_to :status
end
