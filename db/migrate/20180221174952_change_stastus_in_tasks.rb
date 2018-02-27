class ChangeStastusInTasks < ActiveRecord::Migration[5.1]
  def change
  	change_column :tasks, :status_id, 'boolean USING CAST(status_id AS boolean)'
  end
end
