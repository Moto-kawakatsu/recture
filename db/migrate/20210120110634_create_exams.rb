class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.integer :user_id, foreign_key: true
      t.string  :exam_type
      t.string  :subject
      t.string  :term
      t.timestamps
    end
  end
end
