class Reply < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :diary, optional: true
    validates :reply_text, presence: true
end
