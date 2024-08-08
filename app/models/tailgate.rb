# == Schema Information
#
# Table name: tailgates
#
#  id          :bigint           not null, primary key
#  description :text
#  link        :text
#  location    :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  stadium_id  :bigint           not null
#
# Indexes
#
#  index_tailgates_on_stadium_id  (stadium_id)
#
# Foreign Keys
#
#  fk_rails_...  (stadium_id => stadiums.id)
#
class Tailgate < ApplicationRecord
  validates :name, :location, :stadium_id, presence: true
  validates :name, uniqueness: true
  
  belongs_to :stadium
  has_many :advices, as: :adviceable
end
