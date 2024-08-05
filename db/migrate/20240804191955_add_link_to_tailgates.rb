class AddLinkToTailgates < ActiveRecord::Migration[7.1]
  def change
    add_column :tailgates, :link, :text
  end
end
