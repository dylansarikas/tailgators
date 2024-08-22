class Advice < ApplicationRecord
  validates :user_id, presence: true

  belongs_to :user
  belongs_to :adviceable, polymorphic: true

  has_many :likes, dependent: :delete_all

  has_many :fans, through: :likes

  # Great job using scopes

  scope :default_order, -> { order(created_at: :asc) }
  scope :by_likes, -> { order(likes_count: :desc) }
end
