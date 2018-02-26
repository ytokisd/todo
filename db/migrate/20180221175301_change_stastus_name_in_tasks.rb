class ChangeStastusNameInTasks < ActiveRecord::Migration[5.1]
  def change
  	change_column :tasks, :status_id, :boolean, default: false
  	rename_column :tasks, :status_id, :complete

  end
end
