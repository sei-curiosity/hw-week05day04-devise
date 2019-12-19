class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.references :user, null: false, foreign_key: true
      t.string :color
      t.string :year
      t.string :model

      t.timestamps
    end
  end
end
