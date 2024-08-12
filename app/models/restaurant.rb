# == Schema Information
#
# Table name: restaurants
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
#  index_restaurants_on_stadium_id  (stadium_id)
#
# Foreign Keys
#
#  fk_rails_...  (stadium_id => stadiums.id)
#
class Restaurant < ApplicationRecord
  belongs_to :stadium
end
