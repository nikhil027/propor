class RemoveColumnPaymentDescriptionInPayments < ActiveRecord::Migration
  def change
  	remove_column :payments, :payment_description
  end
end
