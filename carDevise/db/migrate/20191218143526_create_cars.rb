class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.references :user, null: false, foreign_key: true
      t.string :model
      t.string :year
      t.string :color

      t.timestamps
    end
  end
end
