class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :description
      t.integer :user_id
      t.integer :status_id
    end
  end
end
