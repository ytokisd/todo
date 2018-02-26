class AddPriorityColumnToTasks < ActiveRecord::Migration[5.1]
  def change
  	change_column(:tasks, :priority, :text)
  end
end
