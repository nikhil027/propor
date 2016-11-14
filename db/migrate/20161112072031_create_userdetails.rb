class CreateUserdetails < ActiveRecord::Migration
  def change
    create_table :userdetails do |t|
      t.integer :user_id
      t.string :name
      t.string :email
      t.string :mobile
      t.date :date_of_birth
      t.string :role
      t.string :pan_no

      t.timestamps null: false
    end
  end
end
