class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages
  has_many :comments
  has_many :responses
  has_many :agrees, dependent: :destroy
  has_many :writings, dependent: :destroy
  
with_options presence: true do
  validates :email
  validates :name
  validates :genre
  validates :grade
  validates :class_number
  validates :student_number

end


  def already_agreed?(comment)
    self.agrees.exists?(comment_id: comment.id)
  end
end
