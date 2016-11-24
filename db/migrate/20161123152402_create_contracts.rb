class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :user_id
      t.integer :property_id
      t.integer :tenant_id
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
