class Tailgate < ApplicationRecord
  validates :name, :location, :stadium_id, presence: true
  validates :name, uniqueness: true

  belongs_to :stadium
  has_many :advices, as: :adviceable, dependent: :delete_all
end
