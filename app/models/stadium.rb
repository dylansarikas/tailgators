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
#  nick_name   :string
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
  has_many :restaurants
  has_many :advices, as: :adviceable, dependent: :delete_all

  def alias
    self.team.parameterize(separator: '_')
  end
end
