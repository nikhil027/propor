class RemoveColumnPayerAndPayeeFromPayments < ActiveRecord::Migration
  def change
  	remove_column :payments, :payer_id
  	remove_column :payments, :payee_id
  end
end
