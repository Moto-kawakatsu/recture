class Task < ApplicationRecord
    belongs_to :room
    with_options presence: true do
    validates :title
    validates :task_content
    validates :deadline
    end
end
