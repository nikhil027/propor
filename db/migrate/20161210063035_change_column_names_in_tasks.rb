class ChangeColumnNamesInTasks < ActiveRecord::Migration
  def change
  	remove_column :tasks, :task_type
  	add_column :tasks, :task_type_id, :integer
  	remove_column :tasks, :task_category
  	add_column :tasks, :task_category_id, :integer
  end
end
