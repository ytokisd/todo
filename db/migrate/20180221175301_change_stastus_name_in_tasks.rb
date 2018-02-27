class ChangeStastusNameInTasks < ActiveRecord::Migration[5.1]
  def change
  	rename_column :tasks, :status_id, :complete
  	change_column :tasks, :status_id, :boolean, default: false

  end
end
