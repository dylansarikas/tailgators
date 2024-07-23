class CreateAdvices < ActiveRecord::Migration[7.1]
  def change
    create_table :advices do |t|
      t.references :user, null: false, foreign_key: true
      t.text :body
      t.references :adviceable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
