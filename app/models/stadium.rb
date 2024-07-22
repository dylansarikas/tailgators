# == Schema Information
#
# Table name: stadiums
#
#  id         :integer          not null, primary key
#  latitude   :string
#  longitude  :string
#  name       :string
#  team       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Stadium < ApplicationRecord
  validates :latitude, :longitude, :name, :team, presence: true
  
  has_many :stadiums
end
