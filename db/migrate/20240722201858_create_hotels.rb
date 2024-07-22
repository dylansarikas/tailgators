class CreateHotels < ActiveRecord::Migration[7.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :link
      t.string :address
      t.references :stadium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
