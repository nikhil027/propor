class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :owner_id
      t.integer :tenant_id
      t.string :reference_number
      t.date :payment_date

      t.timestamps null: false
    end
  end
end
