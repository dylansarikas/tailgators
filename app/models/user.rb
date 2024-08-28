class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, uniqueness: true

  has_many :advices
  has_many :likes, foreign_key: :fan_id

  has_many :own_advices, class_name: "Advice", dependent: :destroy

  has_many :liked_advices, through: :likes, source: :advice
end
