class CreatePauses < ActiveRecord::Migration
  def change
    create_table :pauses do |t|
      t.string :reason
      t.datetime :begintime
      t.datetime :endtime
      t.boolean :iscomplete
      t.integer :pomodoro_id

      t.timestamps null: false
    end
  end
end
