class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :date
      t.references :location, foreign_key: true
      t.references :season, foreign_key: true

      t.timestamps
    end
  end
end
