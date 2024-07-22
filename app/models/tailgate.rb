# == Schema Information
#
# Table name: tailgates
#
#  id         :integer          not null, primary key
#  location   :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  stadium_id :integer          not null
#
# Indexes
#
#  index_tailgates_on_stadium_id  (stadium_id)
#
# Foreign Keys
#
#  stadium_id  (stadium_id => stadiums.id)
#
class Tailgate < ApplicationRecord
  validates :name, :location, :stadium_id, presence: true
  belongs_to :stadium
end
