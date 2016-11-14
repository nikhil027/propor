class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_type
      t.string :title
      t.text :description
      t.string :category
      t.integer :proprty_id
      t.string :status
      t.date :due_date
      t.string :priority
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
