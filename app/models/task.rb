class Task < ApplicationRecord
    is_impressionable
    belongs_to :room
    with_options presence: true do
    validates :title
    validates :task_content
    validates :deadline
    end
end
