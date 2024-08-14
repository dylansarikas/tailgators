class AddNickNameToStadiums < ActiveRecord::Migration[7.1]
  def change
    add_column :stadiums, :nick_name, :string
  end
end
