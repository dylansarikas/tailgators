# == Schema Information
#
# Table name: hotels
#
#  id          :bigint           not null, primary key
#  address     :string
#  description :text
#  link        :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  stadium_id  :bigint           not null
#
# Indexes
#
#  index_hotels_on_stadium_id  (stadium_id)
#
# Foreign Keys
#
#  fk_rails_...  (stadium_id => stadiums.id)
#
class Hotel < ApplicationRecord
  validates :name, :address, :stadium_id, presence: true
  validates :name, uniqueness: true

  belongs_to :stadium
  has_many :advices, as: :adviceable, dependent: :delete_all
end
