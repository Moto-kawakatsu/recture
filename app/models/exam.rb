class Exam < ApplicationRecord
    belongs_to :user

    with_options presence: true do
    validates :term
    validates :subject
    validates :score
    validates :considering
    validates :grade_num
    end
end
