class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|

    	t.string :task_type
    	t.string :title
    	t.text :description
    	t.string :category
    	t.integer :property_id
    	t.date :due_date
    	t.string :status
    	t.string :priority
    	t.integer :userdetail_id

      t.timestamps null: false
    end
  end
end
