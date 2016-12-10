class RemoveColumnPaymentDesscriptionAndAddPaymentDescriptionToPayments < ActiveRecord::Migration
  def change
  	remove_column :payments, :payment_desscription_id
  	add_column :payments, :payment_description_id, :integer
  end
end
