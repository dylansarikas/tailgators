# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  advice_id  :bigint           not null
#  fan_id     :bigint           not null
#
# Indexes
#
#  index_likes_on_advice_id  (advice_id)
#  index_likes_on_fan_id     (fan_id)
#
# Foreign Keys
#
#  fk_rails_...  (advice_id => advices.id)
#  fk_rails_...  (fan_id => users.id)
#
class Like < ApplicationRecord
  belongs_to :fan, class_name: "User"
  belongs_to :advice, counter_cache: true

  validates :fan_id, uniqueness: { scope: :advice_id, message: "has already liked this advice" }
end
