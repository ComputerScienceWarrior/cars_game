class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.text :name
      t.integer :level
      t.integer :attack
      t.integer :durability
      t.integer :speed
      t.integer :wins
      t.integer :losses
      t.integer :rank
      t.integer :exp_points
      t.integer :team_id

      t.timestamps
    end
  end
end
