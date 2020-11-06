class Comment < ApplicationRecord
    belongs_to :message
    belongs_to :user
    has_many :agrees, dependent: :destroy
    has_many :responses, dependent: :destroy

    validates :text, presence: true, length: {maximum: 60 }
end
