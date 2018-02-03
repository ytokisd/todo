class RemoveCollumnDescription < ActiveRecord::Migration[5.1]
  def change
  	remove_column :projects, :description 
  	remove_column :tasks, :description
  end
end
