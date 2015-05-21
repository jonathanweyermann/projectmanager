class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description
      t.integer :rank
      t.integer :task_id

      t.timestamps null: false
    end
  end
end
