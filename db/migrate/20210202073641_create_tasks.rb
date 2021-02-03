class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :room_id, foreign_key: true
      t.string :title
      t.string :content
      t.integer :deadline
      t.timestamps
    end
  end
end
