class AddBarGameWinnerToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :team, foreign_key: true
  end
end
