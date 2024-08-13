class Like < ApplicationRecord
  belongs_to :fan, class_name: "User"
  belongs_to :advice, counter_cache: true
end
