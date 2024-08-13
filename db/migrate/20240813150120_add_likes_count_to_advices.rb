class AddLikesCountToAdvices < ActiveRecord::Migration[7.1]
  def change
    add_column :advices, :likes_count, :integer, default: 0
  end
end
