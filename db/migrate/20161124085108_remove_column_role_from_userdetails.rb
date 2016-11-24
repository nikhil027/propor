class RemoveColumnRoleFromUserdetails < ActiveRecord::Migration
  def change
  	remove_column :userdetails, :role
  end
end
