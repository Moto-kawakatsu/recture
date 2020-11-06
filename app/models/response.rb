class Response < ApplicationRecord
    belongs_to :comment
    belongs_to :user

    validates :response_text, presence: true
end
