class AddColumnPaymentDescriptionAndPaymentOptionToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :payment_description, :integer
    add_column :payments, :payment_option, :integer
  end
end
