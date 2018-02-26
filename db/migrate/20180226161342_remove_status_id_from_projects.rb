class RemoveStatusIdFromProjects < ActiveRecord::Migration[5.1]
  def change
  	remove_column :projects, :status_id
  end
end
