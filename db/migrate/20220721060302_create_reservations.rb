class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.integer :reservation_number
      t.date :date
      t.time :time
      t.references :station, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :longitude, null: false
      t.float :latitude, null: false
      t.string :address, null: false

      t.timestamps
    end
  end
end
