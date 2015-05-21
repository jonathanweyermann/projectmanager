class CreateDateranges < ActiveRecord::Migration
  def change
    create_table :dateranges do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.integer :context_id

      t.timestamps null: false
    end
  end
end
