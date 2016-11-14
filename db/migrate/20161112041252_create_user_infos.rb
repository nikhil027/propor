class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|

    	t.integer :user_id
    	t.string :email
    	t.string :mobile
    	t.date :date_of_birth
    	t.string :role
    	t.string :taxpayer_id

      t.timestamps null: false
    end
  end
end
