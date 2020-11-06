class CreateAgrees < ActiveRecord::Migration[6.0]
  def change
    create_table :agrees do |t|
      t.integer :user_id, foreign_key: true
      t.integer :comment_id, foreign_key: true
      t.timestamps
    end
  end
end
