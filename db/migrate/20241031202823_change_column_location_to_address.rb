class ChangeColumnLocationToAddress < ActiveRecord::Migration[7.1]
  def change
    rename_column :tailgates, :location, :address
  end
end
