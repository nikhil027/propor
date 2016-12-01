class AddColumnContractIdToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :contract_id, :integer
  end
end
