class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.integer :user_id, foreign_key: true
      t.string  :term
      t.string  :subject
      t.integer :score
      t.string  :considering
      t.timestamps
    end
  end
end
