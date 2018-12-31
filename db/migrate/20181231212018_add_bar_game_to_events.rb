class AddBarGameToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :bar_game, :string
  end
end
