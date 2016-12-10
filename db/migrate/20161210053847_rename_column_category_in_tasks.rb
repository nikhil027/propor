class RenameColumnCategoryInTasks < ActiveRecord::Migration
  def change
  	remove_column :tasks, :category
  	add_column :tasks, :task_category, :integer
  end
end
