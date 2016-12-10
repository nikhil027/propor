class RemoveColumnIdentityDocumentFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :identity_document
  end
end
