class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :completed
      t.integer :total
      t.integer :priority
      t.datetime :deadline
      t.boolean :iscomplete
      t.integer :context_id

      t.timestamps null: false
    end
  end
end
