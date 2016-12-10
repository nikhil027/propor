class ChangeTaskTypeToInt < ActiveRecord::Migration
  def change
  	remove_column :tasks, :task_type
  	add_column :tasks, :task_type, :integer
  end
end
