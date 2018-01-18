class Status < ActiveRecord::Base
  has_many :project
  has_many :task
end
