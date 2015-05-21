class CreatePomodoros < ActiveRecord::Migration
  def change
    create_table :pomodoros do |t|
      t.datetime :begintime
      t.datetime :entime
      t.boolean :iscomplete
      t.integer :task_id

      t.timestamps null: false
    end
  end
end
