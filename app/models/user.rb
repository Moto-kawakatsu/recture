class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :genre, presence: true
  validates :grade, presence: true
  validates :class_number, presence: true
  validates :student_number, presence: true
end
