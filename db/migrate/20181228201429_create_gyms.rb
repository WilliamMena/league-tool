class CreateGyms < ActiveRecord::Migration[5.2]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :location
      t.string :email
      t.string :contant_name
      t.string :phone

      t.timestamps
    end
  end
end
