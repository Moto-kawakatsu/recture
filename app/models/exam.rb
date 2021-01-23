class Exam < ApplicationRecord
    belongs_to :user

    with_options presence: true do
    validates :grade_num
    validates :term
    validates :subject
    validates :score
    validates :considering
    end
end
