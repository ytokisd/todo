<<<<<<< Updated upstream
class Status < ActiveRecord::Base
  has_many :projects
  has_many :tasks
end
=======
class Status < ApplicationRecord
	has_many :tasks
	has_many :projects
end
>>>>>>> Stashed changes
