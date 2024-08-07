class AddDescriptionToStadiums < ActiveRecord::Migration[7.1]
  def change
    add_column :stadiums, :description, :text
    add_column :hotels, :description, :text
    add_column :tailgates, :description, :text
  end
end
