class Diary < ApplicationRecord
    belongs_to :user
    has_one :reply
    validates :writing, presence: true
end
