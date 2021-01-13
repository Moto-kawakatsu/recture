class Diary < ApplicationRecord
    belongs_to :user
    has_one :reply

    with_options presence: true do
    validates :writing, length: {maximum: 200 }
    validates :title
    validates :study_content
    validates :study_time
    end
end
