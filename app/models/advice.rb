# == Schema Information
#
# Table name: advices
#
#  id              :bigint           not null, primary key
#  adviceable_type :string           not null
#  body            :text
#  likes_count     :integer          default(0)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  adviceable_id   :bigint           not null
#  user_id         :bigint           not null
#
# Indexes
#
#  index_advices_on_adviceable  (adviceable_type,adviceable_id)
#  index_advices_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Advice < ApplicationRecord
  validates :user_id, presence: true
  
  belongs_to :user
  belongs_to :adviceable, polymorphic: true

  has_many :likes

  has_many :fans, through: :likes

  scope :default_order, -> { order(created_at: :asc) }
  scope :by_likes, -> { order(likes_count: :desc) }
end
