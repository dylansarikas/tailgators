# == Schema Information
#
# Table name: lots
#
#  id          :bigint           not null, primary key
#  address     :string
#  description :string
#  link        :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  stadium_id  :bigint           not null
#
# Indexes
#
#  index_lots_on_stadium_id  (stadium_id)
#
# Foreign Keys
#
#  fk_rails_...  (stadium_id => stadiums.id)
#
class Lot < ApplicationRecord
  validates :name, :stadium_id, presence: true

  belongs_to :stadium
  has_many :advices, as: :adviceable, dependent: :delete_all
end
