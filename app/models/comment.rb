class Comment < ApplicationRecord
    belongs_to :message
    belongs_to :user
    has_many :agrees, dependent: :destroy
    has_many :responses, dependent: :destroy
    has_many :agreed_users, through: :agrees, source: :user

    validates :text, presence: true, length: {maximum: 200 }
end
