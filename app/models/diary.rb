class Diary < ApplicationRecord
    belongs_to :user
    has_many :replies

    with_options presence: true do
    validates :writing
    validates :title
    end
end
