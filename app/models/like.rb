class Like < ApplicationRecord
  belongs_to :fan, class_name: 'User'
  belongs_to :advice, counter_cache: true

  validates :fan_id, uniqueness: { scope: :advice_id, message: 'has already liked this advice' }
end
