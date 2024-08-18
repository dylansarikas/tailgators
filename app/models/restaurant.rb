class Restaurant < ApplicationRecord
  validates :name, :stadium_id, presence: true

  belongs_to :stadium
  has_many :advices, as: :adviceable, dependent: :delete_all
end
