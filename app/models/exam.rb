class Exam < ApplicationRecord
    belongs_to :user

    with_options presence: true do
    validates :grade_num
    validates :term
    validates :subject
    validates :score, format: {with: /\A[0-9]+\z/}, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 100}
    validates :considering, length: {maximum: 40 }
    end
end
