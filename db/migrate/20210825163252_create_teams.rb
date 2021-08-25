class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.text :name
      t.integer :total_wins
      t.integer :total_losses
      t.integer :rank

      t.timestamps
    end
  end
end
