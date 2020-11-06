class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.integer :user_id, foreign_key: true
      t.integer :comment_id, foreign_key: true
      t.text :response_text
      t.timestamps
    end
  end
end
