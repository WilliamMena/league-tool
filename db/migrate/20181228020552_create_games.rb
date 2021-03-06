class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :team_1_wins
      t.integer :team_2_wins
      t.integer :team_1_high_throws
      t.integer :team_2_high_throws
      t.boolean :currently_playing
      t.references :team_1
      t.references :team_2

      t.timestamps
    end
  end
end
