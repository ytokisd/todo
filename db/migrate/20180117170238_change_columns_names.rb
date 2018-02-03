class ChangeColumnsNames < ActiveRecord::Migration[5.1]
  def change
  	change_table :projects do |t|
  		t.remove :project_name
  		t.string :name
  	end
  	change_table :tasks do |t|
  		t.remove :task_name
  		t.string :name
  	end
  	change_table :statuses do |t|
  		t.remove :status_name
  		t.string :name
  	end
  end
end
