<<<<<<< Updated upstream
class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :status
end
=======
class Task < ApplicationRecord
	belongs_to :project
end
>>>>>>> Stashed changes
