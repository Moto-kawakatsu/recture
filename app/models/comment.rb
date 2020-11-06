class Comment < ApplicationRecord
    belongs_to :message
    belongs_to :user
    has_many :agrees, dependent: :destroy

    validates :text, presence: true
end
