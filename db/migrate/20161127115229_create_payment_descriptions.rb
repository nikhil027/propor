class CreatePaymentDescriptions < ActiveRecord::Migration
  def change
    create_table :payment_descriptions do |t|
      t.string :payment_type
      t.string :payment_description

      t.timestamps null: false
    end
  end
end
