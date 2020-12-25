class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.integer :user_id, foreign_key: true
      t.string  :writing
      t.timestamps
    end
  end
end