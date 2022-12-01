class CreateHangouts < ActiveRecord::Migration[7.0]
  def change
    create_table :hangouts do |t|
      t.date :date
      t.time :time
      t.integer :creator_id

      t.timestamps
    end
  end
end
