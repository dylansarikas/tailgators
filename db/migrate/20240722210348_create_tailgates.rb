class CreateTailgates < ActiveRecord::Migration[7.1]
  def change
    create_table :tailgates do |t|
      t.string :location
      t.string :name
      t.references :stadium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
