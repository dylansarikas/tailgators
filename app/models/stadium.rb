class Stadium < ApplicationRecord
  validates :latitude, :longitude, :name, :team, presence: true
  validates :name, uniqueness: true

  has_many :hotels
  has_many :tailgates
  has_many :lots
  has_many :restaurants
  has_many :advices, as: :adviceable, dependent: :delete_all
end
