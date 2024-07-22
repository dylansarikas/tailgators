class CreateStadiums < ActiveRecord::Migration[7.1]
  def change
    create_table :stadiums do |t|
      t.string :name
      t.string :team
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
