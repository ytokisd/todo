<<<<<<< Updated upstream
class Project < ActiveRecord::Base
  has_many :tasks
  belongs_to :user
  belongs_to :status
end
=======
class Project < ApplicationRecord
	has_many :tasks, dependent: :destroy
	belongs_to :user
end
>>>>>>> Stashed changes
