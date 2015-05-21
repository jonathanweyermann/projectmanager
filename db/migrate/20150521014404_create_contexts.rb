class CreateContexts < ActiveRecord::Migration
  def change
    create_table :contexts do |t|
      t.string :name
      t.integer :completed
      t.integer :total

      t.timestamps null: false
    end
  end
end
