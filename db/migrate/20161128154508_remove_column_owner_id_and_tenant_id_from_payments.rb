class RemoveColumnOwnerIdAndTenantIdFromPayments < ActiveRecord::Migration
  def change
  	remove_column :payments, :owner_id
  	remove_column :payments, :tenant_id
  end
end
