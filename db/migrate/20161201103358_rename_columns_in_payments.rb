class RenameColumnsInPayments < ActiveRecord::Migration
  def change
  	remove_column :payments, :payment_description
  	remove_column :payments, :payment_option
  	add_column :payments, :payment_desscription_id, :integer
  	add_column :payments, :payment_option_id, :integer
  end
end
