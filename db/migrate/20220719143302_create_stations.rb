class CreateStations < ActiveRecord::Migration[6.1]
  def change
    create_table :stations do |t|
      t.string :station_name
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
