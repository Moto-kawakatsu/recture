class CreateReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :replies do |t|
      t.integer :user_id, foreign_key: true
      t.integer :diary_id, foreign_key: true
      t.string  :reply_text
      t.timestamps
    end
  end
end
