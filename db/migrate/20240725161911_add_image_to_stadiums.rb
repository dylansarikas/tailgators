class AddImageToStadiums < ActiveRecord::Migration[7.1]
  def change
    add_column :stadiums, :image, :string
  end
end
