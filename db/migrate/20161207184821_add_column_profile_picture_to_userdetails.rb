class AddColumnProfilePictureToUserdetails < ActiveRecord::Migration
  def change
    add_column :userdetails, :profile_picture, :string
  end
end
