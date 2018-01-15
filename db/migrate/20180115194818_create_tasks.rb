class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :description
      t.integer :project_id
      t.integer :status_id
      t.integer :priority
    end
  end
end
