class Reply < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :diary, optional: true
    validates :writing, presence: true
end
