# == Schema Information
#
# Table name: hotels
#
#  id         :integer          not null, primary key
#  address    :string
#  link       :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  stadium_id :integer          not null
#
# Indexes
#
#  index_hotels_on_stadium_id  (stadium_id)
#
# Foreign Keys
#
#  stadium_id  (stadium_id => stadiums.id)
#
class Hotel < ApplicationRecord
  validates :name, :address, :stadium_id

  belongs_to :stadium
end
