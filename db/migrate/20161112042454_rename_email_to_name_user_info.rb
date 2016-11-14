class RenameEmailToNameUserInfo < ActiveRecord::Migration
  def change
  	rename_column :user_infos, :email, :name
  end
end
