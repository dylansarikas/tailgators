class AddAddressToStadiums < ActiveRecord::Migration[7.1]
  def change
    add_column :stadiums, :address, :string
  end
end
