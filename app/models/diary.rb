class Diary < ApplicationRecord
    belongs_to :user
    has_one :reply

    with_options presence: true do
    validates :writing
    validates :title
    validates :study_time
    end
end
