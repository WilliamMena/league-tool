class CreateSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :seasons do |t|
      t.string :name
      t.belongs_to :league, foreign_key: true

      t.timestamps
    end
  end
end
