class CreateLots < ActiveRecord::Migration[7.1]
  def change
    create_table :lots do |t|
      t.string :address
      t.string :description
      t.string :name
      t.string :link
      t.references :stadium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
