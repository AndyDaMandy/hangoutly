class CreateHangoutBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :hangout_bookings do |t|
      t.integer :attendee_id
      t.references :hangout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
