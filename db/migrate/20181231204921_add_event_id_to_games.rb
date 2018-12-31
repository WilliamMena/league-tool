class AddEventIdToGames < ActiveRecord::Migration[5.2]
  def change
    add_reference :games, :event, foreign_key: true
  end
end
