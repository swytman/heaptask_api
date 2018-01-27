class AddTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.datetime :start
      t.datetime :end
      t.string :importance
      t.string :urgency
      t.timestamps
    end
  end
end
