class RenameColumnUserdetailInTasks < ActiveRecord::Migration
  def change
  	rename_column :tasks, :userdetail_id, :user_id
  end
end
