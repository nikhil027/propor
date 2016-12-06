class AddColumnPayerIdAndPayeeIdToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :payer_id, :integer
    add_column :payments, :payee_id, :integer
  end
end
