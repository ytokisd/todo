class EditColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :projects, :project_name, :name
  	rename_column :tasks, :task_name, :name
  end
end
