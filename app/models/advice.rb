# == Schema Information
#
# Table name: advices
#
#  id              :bigint           not null, primary key
#  adviceable_type :string           not null
#  body            :text
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
  belongs_to :user
  belongs_to :adviceable, polymorphic: true

  validates :user_id, presence: true

  scope :default_order, -> { order(created_at: :asc) }
end
