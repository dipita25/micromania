class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.date :startDate
      t.date :endDate
      t.float :totalPrice

      t.timestamps
    end
  end
end
