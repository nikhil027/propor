class AddIdentityDocumentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :identity_document, :string
  end
end
