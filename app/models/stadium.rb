# == Schema Information
#
# Table name: stadiums
#
#  id          :bigint           not null, primary key
#  description :text
#  image       :string
#  latitude    :string
#  longitude   :string
#  name        :string
#  team        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Stadium < ApplicationRecord
  validates :latitude, :longitude, :name, :team, presence: true
  validates :name, uniqueness: true
  
  has_many :hotels
  has_many :tailgates
  has_many :lots
  has_many :advices, as: :adviceable

  def alias
    self.team.parameterize(separator: '_')
  end
end
