class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.string :type
      t.integer :owner_id
      t.float :built_up_area
      t.boolean :is_available
      t.float :property_reserve
      t.text :description
      t.integer :country_id
      t.integer :state_id
      t.integer :city_id
      t.text :address
      t.string :water_bill_details
      t.string :electricity_bill_details

      t.timestamps null: false
    end
  end
end
