class Task < ApplicationRecord
  belongs_to :project

  scope :complete, -> { where(complete: true) }
  scope :incomplete, -> { where(complete: false) }
end