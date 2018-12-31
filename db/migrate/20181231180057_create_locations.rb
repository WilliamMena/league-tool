class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.belongs_to :gym, foreign_key: true
      t.belongs_to :bar, foreign_key: true

      t.timestamps
    end
  end
end
